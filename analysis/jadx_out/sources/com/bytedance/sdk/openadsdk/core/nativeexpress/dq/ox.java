package com.bytedance.sdk.openadsdk.core.nativeexpress.dq;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private static volatile ox f3221d = null;
    public static int dq = 20;
    private volatile ConcurrentHashMap<String, com.bytedance.sdk.component.adexpress.dq.ox.ox> s;
    private final Object ox = new Object();
    private final LruCache<String, dq> p = new LruCache<String, dq>(dq) { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.dq.ox.1
        @Override // android.util.LruCache
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public int sizeOf(String str, dq dqVar) {
            return 1;
        }
    };
    private AtomicBoolean iw = new AtomicBoolean(false);

    private ox() {
    }

    public static ox dq() {
        if (f3221d == null) {
            synchronized (ox.class) {
                try {
                    if (f3221d == null) {
                        f3221d = new ox();
                    }
                } finally {
                }
            }
        }
        return f3221d;
    }

    public static String ox() {
        return "CREATE TABLE IF NOT EXISTS ugen_template (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , rit TEXT , update_time TEXT)";
    }

    private void ox(String str) {
        if (!TextUtils.isEmpty(str) && this.p.size() > 0) {
            synchronized (this.ox) {
                this.p.remove(str);
            }
        }
    }

    public List<dq> d() {
        boolean z = this.iw.get();
        this.iw.set(true);
        ArrayList arrayList = new ArrayList();
        Cursor query = com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "ugen_template", null, null, null, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    do {
                        int columnIndex = query.getColumnIndex(TTDownloadField.TT_ID);
                        int columnIndex2 = query.getColumnIndex(TTDownloadField.TT_MD5);
                        int columnIndex3 = query.getColumnIndex(abn.EXTRA_URL);
                        int columnIndex4 = query.getColumnIndex("data");
                        int columnIndex5 = query.getColumnIndex("update_time");
                        if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex5 != -1 && columnIndex4 != -1) {
                            int columnIndex6 = query.getColumnIndex("rit");
                            String string = columnIndex6 != -1 ? query.getString(columnIndex6) : null;
                            String string2 = query.getString(columnIndex);
                            String string3 = query.getString(columnIndex2);
                            String string4 = query.getString(columnIndex3);
                            dq dq2 = new dq().dq(string2).d(string3).ox(string4).p(query.getString(columnIndex4)).s(string).dq(Long.valueOf(query.getLong(columnIndex5)));
                            arrayList.add(dq2);
                            synchronized (this.ox) {
                                this.p.put(string2, dq2);
                            }
                            if (!z) {
                                if (this.s == null) {
                                    this.s = new ConcurrentHashMap<>();
                                }
                                if (string2 != null && !this.s.contains(string2)) {
                                    this.s.put(string2, new com.bytedance.sdk.component.adexpress.dq.ox.ox(string, string2, string3));
                                }
                            }
                        }
                    } while (query.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    ig.d("UGTmplDbHelper", "getUgenTemplate error", th);
                    return arrayList;
                } finally {
                    query.close();
                }
            }
        }
        if (query != null) {
        }
        return arrayList;
    }

    public void d(String str) {
        com.bytedance.sdk.component.adexpress.dq.ox.ox oxVar;
        try {
            if (this.s != null && !this.s.isEmpty() && (oxVar = this.s.get(str)) != null) {
                String dq2 = oxVar.dq();
                if (!TextUtils.isEmpty(dq2)) {
                    com.bytedance.sdk.openadsdk.core.ox.d.dq().delete(dq2, str, true);
                }
                this.s.remove(str);
            }
        } catch (Throwable unused) {
        }
    }

    public dq dq(String str, String str2) {
        dq dqVar;
        dq dq2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.ox) {
            dqVar = this.p.get(str);
        }
        if (dqVar != null) {
            if (TextUtils.equals(str2, dqVar.d())) {
                return dqVar;
            }
            ox(str2);
            return null;
        }
        Cursor query = com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "ugen_template", null, "id=? AND md5=?", new String[]{str, str2}, null, null, null);
        if (query == null) {
            return null;
        }
        try {
            if (query.moveToFirst()) {
                do {
                    int columnIndex = query.getColumnIndex(TTDownloadField.TT_ID);
                    int columnIndex2 = query.getColumnIndex(TTDownloadField.TT_MD5);
                    int columnIndex3 = query.getColumnIndex(abn.EXTRA_URL);
                    int columnIndex4 = query.getColumnIndex("data");
                    int columnIndex5 = query.getColumnIndex("update_time");
                    if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex5 != -1 && columnIndex4 != -1) {
                        int columnIndex6 = query.getColumnIndex("rit");
                        String string = query.getString(columnIndex);
                        String string2 = query.getString(columnIndex2);
                        String string3 = query.getString(columnIndex3);
                        String string4 = query.getString(columnIndex4);
                        dq2 = new dq().dq(string).d(string2).p(string4).ox(string3).s(columnIndex6 != -1 ? query.getString(columnIndex6) : null).dq(Long.valueOf(query.getLong(columnIndex5)));
                        synchronized (this.ox) {
                            this.p.put(string, dq2);
                        }
                    }
                    return null;
                } while (query.moveToNext());
                return dq2;
            }
        } finally {
            try {
                return null;
            } finally {
            }
        }
        return null;
    }

    public Set<dq> dq(String str) {
        dq dqVar;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Cursor query = com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "ugen_template", null, "rit=?", new String[]{str}, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    do {
                        int columnIndex = query.getColumnIndex(TTDownloadField.TT_ID);
                        if (columnIndex != -1) {
                            String string = query.getString(columnIndex);
                            if (!TextUtils.isEmpty(string)) {
                                synchronized (this.ox) {
                                    dqVar = this.p.get(string);
                                }
                                if (dqVar != null) {
                                    hashSet.add(dqVar);
                                } else {
                                    dq dqVar2 = new dq();
                                    int columnIndex2 = query.getColumnIndex("data");
                                    if (columnIndex2 != -1) {
                                        String string2 = query.getString(columnIndex2);
                                        if (!TextUtils.isEmpty(string2)) {
                                            dqVar2.p(string2);
                                            dqVar2.dq(string);
                                            dqVar2.s(str);
                                            int columnIndex3 = query.getColumnIndex(TTDownloadField.TT_MD5);
                                            int columnIndex4 = query.getColumnIndex(abn.EXTRA_URL);
                                            int columnIndex5 = query.getColumnIndex("update_time");
                                            if (columnIndex3 != -1) {
                                                dqVar2.d(query.getString(columnIndex3));
                                            }
                                            if (columnIndex4 != -1) {
                                                dqVar2.ox(query.getString(columnIndex4));
                                            }
                                            if (columnIndex5 != -1) {
                                                dqVar2.dq(Long.valueOf(query.getLong(columnIndex5)));
                                            }
                                            hashSet.add(dqVar2);
                                            synchronized (this.ox) {
                                                this.p.put(string, dqVar2);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } while (query.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    ig.d("UGTmplDbHelper", "getUgenTemplateFormRit error", th);
                    return hashSet;
                } finally {
                    query.close();
                }
            }
        }
        if (query != null) {
        }
        return hashSet;
    }

    public void dq(dq dqVar, boolean z) {
        if (dqVar == null || TextUtils.isEmpty(dqVar.dq())) {
            return;
        }
        Cursor query = com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "ugen_template", null, "id=?", new String[]{dqVar.dq()}, null, null, null);
        boolean z2 = query != null && query.getCount() > 0;
        if (z2) {
            try {
                r3 = query.moveToFirst() ? query.getString(query.getColumnIndex("rit")) : null;
                query.close();
            } catch (Throwable unused) {
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(TTDownloadField.TT_ID, dqVar.dq());
        contentValues.put(TTDownloadField.TT_MD5, dqVar.d());
        contentValues.put(abn.EXTRA_URL, dqVar.ox());
        contentValues.put("data", dqVar.s());
        contentValues.put("rit", dqVar.iw());
        contentValues.put("update_time", dqVar.p());
        if (z2) {
            com.bytedance.sdk.openadsdk.core.multipro.dq.dq.update(wp.getContext(), "ugen_template", contentValues, "id=?", new String[]{dqVar.dq()});
        } else {
            com.bytedance.sdk.openadsdk.core.multipro.dq.dq.insert(wp.getContext(), "ugen_template", contentValues);
        }
        synchronized (this.ox) {
            this.p.put(dqVar.dq(), dqVar);
        }
        if (z) {
            return;
        }
        try {
            if (this.s == null) {
                this.s = new ConcurrentHashMap<>();
            }
            com.bytedance.sdk.component.adexpress.dq.ox.ox oxVar = new com.bytedance.sdk.component.adexpress.dq.ox.ox(dqVar.iw(), dqVar.dq(), dqVar.d());
            this.s.put(dqVar.dq(), oxVar);
            if (r3 != null) {
                com.bytedance.sdk.openadsdk.core.ox.d.dq().delete(r3, oxVar.d(), true);
            }
            com.bytedance.sdk.openadsdk.core.ox.d.dq().update(dqVar.iw(), oxVar, true);
        } catch (Throwable unused2) {
        }
    }

    public void dq(Set<String> set) {
        if (set == null || set.isEmpty()) {
            return;
        }
        String[] strArr = (String[]) set.toArray(new String[set.size()]);
        if (strArr.length > 0) {
            for (int i = 0; i < strArr.length; i++) {
                ox(strArr[i]);
                com.bytedance.sdk.openadsdk.core.multipro.dq.dq.delete(wp.getContext(), "ugen_template", "id=?", new String[]{strArr[i]});
                d(strArr[i]);
            }
        }
    }
}
