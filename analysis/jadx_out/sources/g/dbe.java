package g;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.work.impl.WorkDatabase_Impl;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public final class dbe {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f13908a = {"UPDATE", "DELETE", "INSERT"};

    /* renamed from: b, reason: collision with root package name */
    public volatile cap f13909b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f13910c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f13911d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f13912e;

    /* renamed from: f, reason: collision with root package name */
    public final String[] f13913f;

    /* renamed from: g, reason: collision with root package name */
    public final WorkDatabase_Impl f13914g;
    public final AtomicBoolean h = new AtomicBoolean(false);
    public final byd i;
    public final dxb j;
    public final HashMap k;
    public final cfx l;
    public final HashMap m;
    public volatile boolean n;

    public dbe(WorkDatabase_Impl workDatabase_Impl, HashMap hashMap, HashMap hashMap2, String... strArr) {
        String str;
        this.f13914g = workDatabase_Impl;
        this.k = hashMap;
        this.m = hashMap2;
        int length = strArr.length;
        dxb dxbVar = new dxb();
        dxbVar.f14997c = new long[length];
        dxbVar.f14998d = new boolean[length];
        dxbVar.f14995a = new int[length];
        this.j = dxbVar;
        bff.e(Collections.newSetFromMap(new IdentityHashMap()), "newSetFromMap(IdentityHashMap())");
        this.l = new cfx();
        this.f13910c = new Object();
        this.f13912e = new Object();
        this.f13911d = new LinkedHashMap();
        int length2 = strArr.length;
        String[] strArr2 = new String[length2];
        for (int i = 0; i < length2; i++) {
            String str2 = strArr[i];
            Locale locale = Locale.US;
            bff.e(locale, "US");
            String lowerCase = str2.toLowerCase(locale);
            bff.e(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            this.f13911d.put(lowerCase, Integer.valueOf(i));
            String str3 = (String) this.k.get(strArr[i]);
            if (str3 != null) {
                str = str3.toLowerCase(locale);
                bff.e(str, "this as java.lang.String).toLowerCase(locale)");
            } else {
                str = null;
            }
            if (str != null) {
                lowerCase = str;
            }
            strArr2[i] = lowerCase;
        }
        this.f13913f = strArr2;
        for (Map.Entry entry : this.k.entrySet()) {
            String str4 = (String) entry.getValue();
            Locale locale2 = Locale.US;
            bff.e(locale2, "US");
            String lowerCase2 = str4.toLowerCase(locale2);
            bff.e(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            if (this.f13911d.containsKey(lowerCase2)) {
                String lowerCase3 = ((String) entry.getKey()).toLowerCase(locale2);
                bff.e(lowerCase3, "this as java.lang.String).toLowerCase(locale)");
                LinkedHashMap linkedHashMap = this.f13911d;
                bff.p(linkedHashMap, "<this>");
                Object obj = linkedHashMap.get(lowerCase2);
                if (obj == null && !linkedHashMap.containsKey(lowerCase2)) {
                    throw new NoSuchElementException("Key " + ((Object) lowerCase2) + " is missing in the map.");
                }
                linkedHashMap.put(lowerCase3, obj);
            }
        }
        this.i = new byd(16, this);
    }

    public final void o(crd crdVar) {
        bff.p(crdVar, "database");
        if (crdVar.e()) {
            return;
        }
        try {
            ReentrantReadWriteLock.ReadLock readLock = this.f13914g.aa.readLock();
            bff.e(readLock, "readWriteLock.readLock()");
            readLock.lock();
            try {
                synchronized (this.f13910c) {
                    int[] k = this.j.k();
                    if (k != null) {
                        if (crdVar.m()) {
                            crdVar.n();
                        } else {
                            crdVar.l();
                        }
                        try {
                            int length = k.length;
                            int i = 0;
                            int i2 = 0;
                            while (i < length) {
                                int i3 = k[i];
                                int i4 = i2 + 1;
                                if (i3 == 1) {
                                    r(crdVar, i2);
                                } else if (i3 == 2) {
                                    String str = this.f13913f[i2];
                                    String[] strArr = f13908a;
                                    for (int i5 = 0; i5 < 3; i5++) {
                                        String str2 = "DROP TRIGGER IF EXISTS " + bfc.f(str, strArr[i5]);
                                        bff.e(str2, "StringBuilder().apply(builderAction).toString()");
                                        crdVar.j(str2);
                                    }
                                }
                                i++;
                                i2 = i4;
                            }
                            crdVar.h();
                            crdVar.g();
                        } catch (Throwable th) {
                            crdVar.g();
                            throw th;
                        }
                    }
                }
            } finally {
                readLock.unlock();
            }
        } catch (SQLiteException e2) {
            Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e2);
        } catch (IllegalStateException e3) {
            Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e3);
        }
    }

    public final boolean p() {
        crd crdVar = this.f13914g.y;
        if (crdVar == null || !((SQLiteDatabase) crdVar.f13370d).isOpen()) {
            return false;
        }
        if (!this.n) {
            this.f13914g.ao().i();
        }
        if (this.n) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    public final void q(aol aolVar) {
        gyp gypVar;
        WorkDatabase_Impl workDatabase_Impl;
        crd crdVar;
        bff.p(aolVar, "observer");
        synchronized (this.l) {
            gypVar = (gyp) this.l.c(aolVar);
        }
        if (gypVar != null) {
            dxb dxbVar = this.j;
            int[] iArr = gypVar.f19015c;
            if (dxbVar.g(Arrays.copyOf(iArr, iArr.length)) && (crdVar = (workDatabase_Impl = this.f13914g).y) != null && ((SQLiteDatabase) crdVar.f13370d).isOpen()) {
                o(workDatabase_Impl.ao().i());
            }
        }
    }

    public final void r(crd crdVar, int i) {
        crdVar.j("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)");
        String str = this.f13913f[i];
        for (int i2 = 0; i2 < 3; i2++) {
            String str2 = f13908a[i2];
            String str3 = "CREATE TEMP TRIGGER IF NOT EXISTS " + bfc.f(str, str2) + " AFTER " + str2 + " ON `" + str + "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = " + i + " AND invalidated = 0; END";
            bff.e(str3, "StringBuilder().apply(builderAction).toString()");
            crdVar.j(str3);
        }
    }
}
