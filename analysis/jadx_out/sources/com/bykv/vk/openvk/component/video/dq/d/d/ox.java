package com.bykv.vk.openvk.component.video.dq.d.d;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bytedance.sdk.component.o.o;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private static volatile ox f524d;
    private final SparseArray<Map<String, dq>> dq;
    private final p ox;
    private final Executor p;
    private volatile SQLiteStatement s;

    private ox(Context context) {
        SparseArray<Map<String, dq>> sparseArray = new SparseArray<>(2);
        this.dq = sparseArray;
        this.p = new com.bytedance.sdk.component.o.p.p(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new o(5, "video_proxy_db"));
        this.ox = new p(context.getApplicationContext());
        sparseArray.put(0, new ConcurrentHashMap());
        sparseArray.put(1, new ConcurrentHashMap());
    }

    private String d(int i) {
        if (i <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i << 1);
        sb.append("?");
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(",?");
        }
        return sb.toString();
    }

    public static ox dq(Context context) {
        if (f524d == null) {
            synchronized (ox.class) {
                try {
                    if (f524d == null) {
                        f524d = new ox(context);
                    }
                } finally {
                }
            }
        }
        return f524d;
    }

    public void delete(final String str, final int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Map<String, dq> map = this.dq.get(i);
        if (map != null) {
            map.remove(str);
        }
        this.p.execute(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.d.d.ox.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ox.this.ox.getWritableDatabase().delete("video_http_header_t", "key=? AND flag=?", new String[]{str, String.valueOf(i)});
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void dq(final int i) {
        Map<String, dq> map = this.dq.get(i);
        if (map != null) {
            map.clear();
        }
        this.p.execute(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.d.d.ox.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ox.this.ox.getWritableDatabase().delete("video_http_header_t", "flag=?", new String[]{String.valueOf(i)});
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void dq(Collection<String> collection, int i) {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        int size = collection.size() + 1;
        String[] strArr = new String[size];
        Map<String, dq> map = this.dq.get(i);
        int i2 = -1;
        for (String str : collection) {
            if (map != null) {
                map.remove(str);
            }
            i2++;
            strArr[i2] = str;
        }
        strArr[i2 + 1] = String.valueOf(i);
        try {
            this.ox.getWritableDatabase().delete("video_http_header_t", "key IN(" + d(size) + ") AND flag=?", strArr);
        } catch (Throwable unused) {
        }
    }

    public void insert(final dq dqVar) {
        if (dqVar != null) {
            Map<String, dq> map = this.dq.get(dqVar.p);
            if (map != null) {
                map.put(dqVar.dq, dqVar);
            }
            this.p.execute(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.d.d.ox.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (ox.this.s == null) {
                            ox oxVar = ox.this;
                            oxVar.s = oxVar.ox.getWritableDatabase().compileStatement("INSERT INTO video_http_header_t (key,mime,contentLength,flag,extra) VALUES(?,?,?,?,?)");
                        } else {
                            ox.this.s.clearBindings();
                        }
                        ox.this.s.bindString(1, dqVar.dq);
                        ox.this.s.bindString(2, dqVar.f522d);
                        ox.this.s.bindLong(3, dqVar.ox);
                        ox.this.s.bindLong(4, dqVar.p);
                        ox.this.s.bindString(5, dqVar.s);
                        ox.this.s.executeInsert();
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    public dq query(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Map<String, dq> map = this.dq.get(i);
        dq dqVar = map == null ? null : map.get(str);
        if (dqVar != null) {
            return dqVar;
        }
        try {
            Cursor query = this.ox.getReadableDatabase().query("video_http_header_t", null, "key=? AND flag=?", new String[]{str, String.valueOf(i)}, null, null, null, "1");
            if (query != null) {
                if (query.getCount() > 0 && query.moveToNext()) {
                    dqVar = new dq(query.getString(query.getColumnIndex("key")), query.getString(query.getColumnIndex("mime")), query.getInt(query.getColumnIndex("contentLength")), i, query.getString(query.getColumnIndex("extra")));
                }
                query.close();
            }
            if (dqVar != null && map != null) {
                map.put(str, dqVar);
            }
            return dqVar;
        } catch (Throwable unused) {
            return null;
        }
    }
}
