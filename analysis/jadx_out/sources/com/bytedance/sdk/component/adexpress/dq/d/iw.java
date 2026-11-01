package com.bytedance.sdk.component.adexpress.dq.d;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private static volatile iw f1670d = null;
    public static int dq = 2000;
    private volatile ConcurrentHashMap<String, com.bytedance.sdk.component.adexpress.dq.ox.ox> s;
    private final Object p = new Object();
    private AtomicBoolean iw = new AtomicBoolean(false);
    private LruCache<String, com.bytedance.sdk.component.adexpress.dq.ox.d> mn = new LruCache<String, com.bytedance.sdk.component.adexpress.dq.ox.d>(dq) { // from class: com.bytedance.sdk.component.adexpress.dq.d.iw.1
        @Override // android.util.LruCache
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public int sizeOf(String str, com.bytedance.sdk.component.adexpress.dq.ox.d dVar) {
            return 1;
        }
    };
    private Set<String> ox = Collections.synchronizedSet(new HashSet());

    private iw() {
    }

    public static iw dq() {
        if (f1670d == null) {
            synchronized (iw.class) {
                try {
                    if (f1670d == null) {
                        f1670d = new iw();
                    }
                } finally {
                }
            }
        }
        return f1670d;
    }

    public static String ox() {
        return "CREATE TABLE IF NOT EXISTS template_diff_new (_id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT ,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , version TEXT , update_time TEXT)";
    }

    private void p(String str) {
        LruCache<String, com.bytedance.sdk.component.adexpress.dq.ox.d> lruCache;
        if (TextUtils.isEmpty(str) || (lruCache = this.mn) == null || lruCache.size() <= 0) {
            return;
        }
        synchronized (this.p) {
            this.mn.remove(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<com.bytedance.sdk.component.adexpress.dq.ox.d> d() {
        if (com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().d() == null) {
            return null;
        }
        boolean z = this.iw.get();
        this.iw.set(true);
        ArrayList arrayList = new ArrayList();
        Cursor query = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().d().query("template_diff_new", null, null, null, null, null, null);
        if (query == null) {
            return arrayList;
        }
        while (query.moveToNext()) {
            try {
                String string = query.getString(query.getColumnIndex("rit"));
                String string2 = query.getString(query.getColumnIndex(TTDownloadField.TT_ID));
                String string3 = query.getString(query.getColumnIndex(TTDownloadField.TT_MD5));
                String string4 = query.getString(query.getColumnIndex(abn.EXTRA_URL));
                String string5 = query.getString(query.getColumnIndex("data"));
                String string6 = query.getString(query.getColumnIndex("version"));
                arrayList.add(new com.bytedance.sdk.component.adexpress.dq.ox.d().dq(string).d(string2).ox(string3).p(string4).s(string5).iw(string6).dq(Long.valueOf(query.getLong(query.getColumnIndex("update_time")))));
                synchronized (this.p) {
                    this.mn.put(string2, arrayList.get(arrayList.size() - 1));
                }
                this.ox.add(string2);
                if (!z && com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().iw() != null) {
                    if (this.s == null) {
                        this.s = new ConcurrentHashMap<>();
                    }
                    if (string2 != null && !this.s.contains(string2)) {
                        this.s.put(string2, new com.bytedance.sdk.component.adexpress.dq.ox.ox(string, string2, string3));
                    }
                }
            } catch (Throwable th) {
                try {
                    ig.d("TmplDbHelper", "getTemplate error", th);
                    return arrayList;
                } finally {
                    query.close();
                }
            }
        }
        return arrayList;
    }

    public Set<com.bytedance.sdk.component.adexpress.dq.ox.d> d(String str) {
        com.bytedance.sdk.component.adexpress.dq.ox.d dVar;
        if (TextUtils.isEmpty(str) || com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().d() == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Cursor query = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().d().query("template_diff_new", null, "rit=?", new String[]{str}, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    do {
                        String string = query.getString(query.getColumnIndex(TTDownloadField.TT_ID));
                        if (!TextUtils.isEmpty(string)) {
                            synchronized (this.p) {
                                dVar = this.mn.get(string);
                            }
                            if (dVar != null) {
                                hashSet.add(dVar);
                            } else {
                                String string2 = query.getString(query.getColumnIndex(TTDownloadField.TT_MD5));
                                String string3 = query.getString(query.getColumnIndex(abn.EXTRA_URL));
                                String string4 = query.getString(query.getColumnIndex("data"));
                                String string5 = query.getString(query.getColumnIndex("version"));
                                com.bytedance.sdk.component.adexpress.dq.ox.d dq2 = new com.bytedance.sdk.component.adexpress.dq.ox.d().dq(str).d(string).ox(string2).p(string3).s(string4).iw(string5).dq(Long.valueOf(query.getLong(query.getColumnIndex("update_time"))));
                                hashSet.add(dq2);
                                synchronized (this.p) {
                                    this.mn.put(string, dq2);
                                }
                                this.ox.add(string);
                            }
                        }
                    } while (query.moveToNext());
                }
                query.close();
                return hashSet;
            } catch (Exception unused) {
                query.close();
            } catch (Throwable th) {
                query.close();
                throw th;
            }
        }
        return hashSet;
    }

    public com.bytedance.sdk.component.adexpress.dq.ox.d dq(String str) {
        com.bytedance.sdk.component.adexpress.dq.ox.d dVar;
        com.bytedance.sdk.component.adexpress.dq.ox.d dq2;
        if (TextUtils.isEmpty(str) || com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().d() == null) {
            return null;
        }
        synchronized (this.p) {
            dVar = this.mn.get(String.valueOf(str));
        }
        if (dVar != null) {
            return dVar;
        }
        Cursor query = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().d().query("template_diff_new", null, "id=?", new String[]{str}, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    do {
                        String string = query.getString(query.getColumnIndex("rit"));
                        String string2 = query.getString(query.getColumnIndex(TTDownloadField.TT_ID));
                        String string3 = query.getString(query.getColumnIndex(TTDownloadField.TT_MD5));
                        String string4 = query.getString(query.getColumnIndex(abn.EXTRA_URL));
                        String string5 = query.getString(query.getColumnIndex("data"));
                        String string6 = query.getString(query.getColumnIndex("version"));
                        dq2 = new com.bytedance.sdk.component.adexpress.dq.ox.d().dq(string).d(string2).ox(string3).p(string4).s(string5).iw(string6).dq(Long.valueOf(query.getLong(query.getColumnIndex("update_time"))));
                        synchronized (this.p) {
                            this.mn.put(string2, dq2);
                        }
                        this.ox.add(string2);
                    } while (query.moveToNext());
                    return dq2;
                }
            } finally {
                try {
                } finally {
                }
            }
        }
        return null;
    }

    public void dq(com.bytedance.sdk.component.adexpress.dq.ox.d dVar, boolean z) {
        if (dVar == null || com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().d() == null || TextUtils.isEmpty(dVar.d())) {
            return;
        }
        Cursor query = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().d().query("template_diff_new", null, "id=?", new String[]{dVar.d()}, null, null, null);
        boolean z2 = query != null && query.getCount() > 0;
        if (query != null) {
            try {
                r2 = query.moveToFirst() ? query.getString(query.getColumnIndex("rit")) : null;
                query.close();
            } catch (Throwable unused) {
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("rit", dVar.dq());
        contentValues.put(TTDownloadField.TT_ID, dVar.d());
        contentValues.put(TTDownloadField.TT_MD5, dVar.ox());
        contentValues.put(abn.EXTRA_URL, dVar.p());
        contentValues.put("data", dVar.s());
        contentValues.put("version", dVar.iw());
        contentValues.put("update_time", dVar.mn());
        if (z2) {
            com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().d().update("template_diff_new", contentValues, "id=?", new String[]{dVar.d()});
        } else {
            com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().d().insert("template_diff_new", contentValues);
        }
        synchronized (this.p) {
            this.mn.put(dVar.d(), dVar);
        }
        this.ox.add(dVar.d());
        if (z) {
            return;
        }
        try {
            if (com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().iw() == null) {
                return;
            }
            if (this.s == null) {
                this.s = new ConcurrentHashMap<>();
            }
            com.bytedance.sdk.component.adexpress.dq.ox.ox oxVar = new com.bytedance.sdk.component.adexpress.dq.ox.ox(dVar.dq(), dVar.d(), dVar.ox());
            this.s.put(dVar.d(), oxVar);
            if (r2 != null) {
                com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().iw().delete(r2, oxVar.d());
            }
            com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().iw().update(dVar.dq(), oxVar);
        } catch (Throwable unused2) {
        }
    }

    public void dq(Set<String> set) {
        if (set == null || set.isEmpty() || com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().d() == null) {
            return;
        }
        String[] strArr = (String[]) set.toArray(new String[set.size()]);
        if (strArr.length > 0) {
            for (int i = 0; i < strArr.length; i++) {
                p(strArr[i]);
                com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().d().delete("template_diff_new", "id=?", new String[]{strArr[i]});
                ox(strArr[i]);
            }
        }
    }

    public void ox(String str) {
        com.bytedance.sdk.component.adexpress.dq.ox.ox oxVar;
        try {
            if (this.s != null && !this.s.isEmpty() && (oxVar = this.s.get(str)) != null) {
                String dq2 = oxVar.dq();
                if (!TextUtils.isEmpty(dq2) && com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().iw() != null) {
                    com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().iw().delete(dq2, str);
                }
                this.s.remove(str);
            }
        } catch (Throwable unused) {
        }
    }
}
