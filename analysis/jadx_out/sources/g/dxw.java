package g;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.dynamite.DynamiteModule$DynamiteLoaderClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
public final class dxw {

    /* renamed from: a, reason: collision with root package name */
    public static int f15042a = -1;

    /* renamed from: c, reason: collision with root package name */
    public static fa f15044c;

    /* renamed from: d, reason: collision with root package name */
    public static final fbc f15045d;

    /* renamed from: f, reason: collision with root package name */
    public static Boolean f15047f;

    /* renamed from: g, reason: collision with root package name */
    public static String f15048g;
    public static afi h;
    public static Boolean i;
    public static final cfg l;
    public static boolean m;
    public final Context n;
    public static final ThreadLocal k = new ThreadLocal();

    /* renamed from: b, reason: collision with root package name */
    public static final cqw f15043b = new cqw(9);

    /* renamed from: e, reason: collision with root package name */
    public static final cuf f15046e = new cuf(20);
    public static final bli j = new bli(21);

    static {
        int i2 = 25;
        l = new cfg(i2);
        f15045d = new fbc(i2);
    }

    public dxw(Context context) {
        this.n = context;
    }

    public static afi o(Context context) {
        afi afiVar;
        synchronized (dxw.class) {
            afi afiVar2 = h;
            if (afiVar2 != null) {
                return afiVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    afiVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    afiVar = queryLocalInterface instanceof afi ? (afi) queryLocalInterface : new afi(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader", 1);
                }
                if (afiVar != null) {
                    h = afiVar;
                    return afiVar;
                }
            } catch (Exception e2) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e2.getMessage());
            }
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0160, code lost:
    
        if (r2 != false) goto L103;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01c8 A[Catch: all -> 0x00d4, TryCatch #8 {all -> 0x00d4, blocks: (B:3:0x0002, B:9:0x00c9, B:77:0x00cf, B:11:0x00dc, B:42:0x0166, B:26:0x0175, B:60:0x01c8, B:61:0x01cb, B:54:0x01c1, B:81:0x00d8, B:139:0x01cd, B:5:0x0003, B:84:0x000a, B:85:0x0026, B:92:0x00c6, B:97:0x004a, B:114:0x00a0, B:122:0x00a3, B:133:0x00bb, B:8:0x00c8, B:136:0x00c1), top: B:2:0x0002, inners: #0, #6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int p(Context context, String str, boolean z) {
        Field declaredField;
        Throwable th;
        RemoteException e2;
        int readInt;
        Cursor cursor;
        try {
            synchronized (dxw.class) {
                Boolean bool = f15047f;
                boolean z2 = true;
                Cursor cursor2 = null;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteModule$DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e3) {
                        e3.toString();
                        bool = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader == ClassLoader.getSystemClassLoader()) {
                            bool = Boolean.FALSE;
                        } else if (classLoader != null) {
                            try {
                                s(classLoader);
                            } catch (eps unused) {
                            }
                            bool = Boolean.TRUE;
                        } else {
                            if (!u(context)) {
                                return 0;
                            }
                            if (!m) {
                                Boolean bool2 = Boolean.TRUE;
                                if (!bool2.equals(null)) {
                                    try {
                                        int q = q(context, str, z, true);
                                        String str2 = f15048g;
                                        if (str2 != null && !str2.isEmpty()) {
                                            ClassLoader ad = kj.ad();
                                            if (ad == null) {
                                                if (Build.VERSION.SDK_INT >= 29) {
                                                    bbd.f();
                                                    String str3 = f15048g;
                                                    ckd.k(str3);
                                                    ad = bbd.d(ClassLoader.getSystemClassLoader(), str3);
                                                } else {
                                                    String str4 = f15048g;
                                                    ckd.k(str4);
                                                    ad = new djt(str4, ClassLoader.getSystemClassLoader());
                                                }
                                            }
                                            s(ad);
                                            declaredField.set(null, ad);
                                            f15047f = bool2;
                                            return q;
                                        }
                                        return q;
                                    } catch (eps unused2) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    }
                                }
                            }
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        }
                        f15047f = bool;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return q(context, str, z, false);
                    } catch (eps e4) {
                        e4.getMessage();
                        return 0;
                    }
                }
                afi o = o(context);
                if (o == null) {
                    return 0;
                }
                try {
                    Parcel _ce = o._ce(o._cd(), 6);
                    int readInt2 = _ce.readInt();
                    _ce.recycle();
                    if (readInt2 >= 3) {
                        ThreadLocal threadLocal = k;
                        dve dveVar = (dve) threadLocal.get();
                        if (dveVar != null && (cursor = dveVar.f14887a) != null) {
                            return cursor.getInt(0);
                        }
                        bpp bppVar = new bpp(context);
                        long longValue = ((Long) f15043b.get()).longValue();
                        Parcel _cd = o._cd();
                        bon.d(_cd, bppVar);
                        _cd.writeString(str);
                        _cd.writeInt(z ? 1 : 0);
                        _cd.writeLong(longValue);
                        Cursor cursor3 = (Cursor) bpp.b(dub.e(o._ce(_cd, 7)));
                        if (cursor3 != null) {
                            try {
                                if (cursor3.moveToFirst()) {
                                    readInt = cursor3.getInt(0);
                                    if (readInt > 0) {
                                        dve dveVar2 = (dve) threadLocal.get();
                                        if (dveVar2 == null || dveVar2.f14887a != null) {
                                            z2 = false;
                                        } else {
                                            dveVar2.f14887a = cursor3;
                                        }
                                    }
                                    cursor2 = cursor3;
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                }
                            } catch (RemoteException e5) {
                                e2 = e5;
                                cursor2 = cursor3;
                                try {
                                    e2.getMessage();
                                    if (cursor2 == null) {
                                        return 0;
                                    }
                                    cursor2.close();
                                    return 0;
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                cursor2 = cursor3;
                                if (cursor2 != null) {
                                }
                                throw th;
                            }
                        }
                        if (cursor3 == null) {
                            return 0;
                        }
                        cursor3.close();
                        return 0;
                    }
                    if (readInt2 == 2) {
                        bpp bppVar2 = new bpp(context);
                        Parcel _cd2 = o._cd();
                        bon.d(_cd2, bppVar2);
                        _cd2.writeString(str);
                        _cd2.writeInt(z ? 1 : 0);
                        Parcel _ce2 = o._ce(_cd2, 5);
                        readInt = _ce2.readInt();
                        _ce2.recycle();
                    } else {
                        bpp bppVar3 = new bpp(context);
                        Parcel _cd3 = o._cd();
                        bon.d(_cd3, bppVar3);
                        _cd3.writeString(str);
                        _cd3.writeInt(z ? 1 : 0);
                        Parcel _ce3 = o._ce(_cd3, 3);
                        readInt = _ce3.readInt();
                        _ce3.recycle();
                    }
                    return readInt;
                } catch (RemoteException e6) {
                    e2 = e6;
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        } catch (Throwable th5) {
            acr.as(context, th5);
            throw th5;
        }
    }

    public static int q(Context context, String str, boolean z, boolean z2) {
        Throwable th;
        Exception exc;
        boolean z3;
        try {
            try {
                boolean z4 = true;
                Cursor query = context.getContentResolver().query(new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").path(true != z ? "api" : "api_force_staging").appendPath(str).appendQueryParameter("requestStartTime", String.valueOf(((Long) f15043b.get()).longValue())).build(), null, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            boolean z5 = false;
                            int i2 = query.getInt(0);
                            if (i2 > 0) {
                                synchronized (dxw.class) {
                                    try {
                                        f15048g = query.getString(2);
                                        int columnIndex = query.getColumnIndex("loaderVersion");
                                        if (columnIndex >= 0) {
                                            f15042a = query.getInt(columnIndex);
                                        }
                                        int columnIndex2 = query.getColumnIndex("disableStandaloneDynamiteLoader2");
                                        if (columnIndex2 >= 0) {
                                            z3 = query.getInt(columnIndex2) != 0;
                                            m = z3;
                                        } else {
                                            z3 = false;
                                        }
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                                dve dveVar = (dve) k.get();
                                if (dveVar == null || dveVar.f14887a != null) {
                                    z4 = false;
                                } else {
                                    dveVar.f14887a = query;
                                }
                                r1 = z4 ? null : query;
                                z5 = z3;
                            } else {
                                r1 = query;
                            }
                            if (z2 && z5) {
                                throw new eps("forcing fallback to container DynamiteLoader impl");
                            }
                            if (r1 != null) {
                                r1.close();
                            }
                            return i2;
                        }
                    } catch (Exception e2) {
                        exc = e2;
                        if (exc instanceof eps) {
                            throw exc;
                        }
                        throw new eps("V2 version check failed: " + exc.getMessage(), exc);
                    } catch (Throwable th3) {
                        r1 = query;
                        th = th3;
                        if (r1 == null) {
                            throw th;
                        }
                        r1.close();
                        throw th;
                    }
                }
                throw new eps("Failed to connect to dynamite module ContentResolver.");
            } catch (Exception e3) {
                exc = e3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static int r(Context context, String str) {
        try {
            Class<?> loadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (ffb.w(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            Log.e("DynamiteModule", "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id '" + str + "'");
            return 0;
        } catch (ClassNotFoundException unused) {
            return 0;
        } catch (Exception e2) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e2.getMessage())));
            return 0;
        }
    }

    public static void s(ClassLoader classLoader) {
        try {
            fa faVar = null;
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(null).newInstance(null);
            if (iBinder != null) {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                faVar = queryLocalInterface instanceof fa ? (fa) queryLocalInterface : new fa(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2", 1);
            }
            f15044c = faVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            throw new eps("Failed to instantiate dynamite loader", e2);
        }
    }

    public static dxw t(Context context, ere ereVar, String str) {
        long j2;
        long j3;
        br v;
        int i2;
        int i3;
        int i4;
        dxw dxwVar;
        long j4;
        bjq a2;
        dxw dxwVar2;
        fa faVar;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new eps("null application Context");
        }
        ThreadLocal threadLocal = k;
        dve dveVar = (dve) threadLocal.get();
        dve dveVar2 = new dve();
        threadLocal.set(dveVar2);
        cqw cqwVar = f15043b;
        Long l2 = (Long) cqwVar.get();
        long longValue = l2.longValue();
        try {
            cqwVar.set(Long.valueOf(SystemClock.elapsedRealtime()));
            v = ereVar.v(context, str, f15046e);
            i2 = v.f12061a;
            j3 = 0;
            try {
                i3 = v.f12062b;
                i4 = v.f12063c;
            } catch (Throwable th) {
                th = th;
                j2 = longValue;
            }
        } catch (Throwable th2) {
            th = th2;
            j2 = longValue;
            j3 = 0;
        }
        try {
            if (i4 != 0) {
                if (i4 == -1) {
                    if (i2 != 0) {
                        i4 = -1;
                    }
                }
                if (i4 != 1 || i3 != 0) {
                    if (i4 == -1) {
                        "Selected local version of ".concat(str);
                        dxwVar = new dxw(applicationContext);
                        j4 = longValue;
                    } else {
                        try {
                            if (i4 != 1) {
                                throw new eps("VersionPolicy returned invalid code:" + i4);
                            }
                            try {
                                try {
                                    try {
                                        synchronized (dxw.class) {
                                            try {
                                                if (!u(context)) {
                                                    throw new eps("Remote loading disabled");
                                                }
                                                Boolean bool = f15047f;
                                                if (bool == null) {
                                                    throw new eps("Failed to determine which loading route to use.");
                                                }
                                                if (bool.booleanValue()) {
                                                    synchronized (dxw.class) {
                                                        try {
                                                            faVar = f15044c;
                                                        } catch (Throwable th3) {
                                                            th = th3;
                                                            while (true) {
                                                                try {
                                                                    throw th;
                                                                } catch (Throwable th4) {
                                                                    th = th4;
                                                                }
                                                            }
                                                        }
                                                    }
                                                    if (faVar == null) {
                                                        throw new eps("DynamiteLoaderV2 was not cached.");
                                                    }
                                                    dve dveVar3 = (dve) threadLocal.get();
                                                    if (dveVar3 == null || dveVar3.f14887a == null) {
                                                        throw new eps("No result cursor");
                                                    }
                                                    Context applicationContext2 = context.getApplicationContext();
                                                    Cursor cursor = dveVar3.f14887a;
                                                    new bpp(null);
                                                    try {
                                                        synchronized (dxw.class) {
                                                            try {
                                                                j4 = longValue;
                                                                Context context2 = (Context) bpp.b(f15042a >= 2 ? faVar.a(new bpp(applicationContext2), str, i3, new bpp(cursor)) : faVar.b(new bpp(applicationContext2), str, i3, new bpp(cursor)));
                                                                if (context2 == null) {
                                                                    throw new eps("Failed to get module context");
                                                                }
                                                                dxwVar2 = new dxw(context2);
                                                            } catch (Throwable th5) {
                                                                th = th5;
                                                                throw th;
                                                            }
                                                        }
                                                    } catch (Throwable th6) {
                                                        th = th6;
                                                    }
                                                } else {
                                                    j4 = longValue;
                                                    afi o = o(context);
                                                    if (o == null) {
                                                        throw new eps("Failed to create IDynamiteLoader.");
                                                    }
                                                    Parcel _ce = o._ce(o._cd(), 6);
                                                    int readInt = _ce.readInt();
                                                    _ce.recycle();
                                                    if (readInt >= 3) {
                                                        dve dveVar4 = (dve) threadLocal.get();
                                                        if (dveVar4 == null) {
                                                            throw new eps("No cached result cursor holder");
                                                        }
                                                        a2 = o.b(new bpp(context), str, i3, new bpp(dveVar4.f14887a));
                                                    } else {
                                                        a2 = readInt == 2 ? o.a(new bpp(context), str, i3) : o.l(new bpp(context), str, i3);
                                                    }
                                                    Object b2 = bpp.b(a2);
                                                    if (b2 == null) {
                                                        throw new eps("Failed to load remote module.");
                                                    }
                                                    dxwVar2 = new dxw((Context) b2);
                                                }
                                                dxwVar = dxwVar2;
                                            } catch (Throwable th7) {
                                                th = th7;
                                                throw th;
                                            }
                                        }
                                    } catch (Throwable th8) {
                                        th = th8;
                                    }
                                } catch (RemoteException e2) {
                                    e = e2;
                                    throw new eps("Failed to load remote module.", e);
                                } catch (eps e3) {
                                    throw e3;
                                } catch (Throwable th9) {
                                    th = th9;
                                    acr.as(context, th);
                                    throw new eps("Failed to load remote module.", th);
                                }
                            } catch (RemoteException e4) {
                                e = e4;
                                throw new eps("Failed to load remote module.", e);
                            } catch (eps e5) {
                                throw e5;
                            } catch (Throwable th10) {
                                th = th10;
                                acr.as(context, th);
                                throw new eps("Failed to load remote module.", th);
                            }
                        } catch (eps e6) {
                            e6.getMessage();
                            int i5 = v.f12061a;
                            if (i5 == 0 || ereVar.v(context, str, new cyl(i5)).f12063c != -1) {
                                throw new eps("Remote load failed. No local fallback found.", e6);
                            }
                            "Selected local version of ".concat(str);
                            dxwVar = new dxw(applicationContext);
                        }
                    }
                    if (j4 == 0) {
                        f15043b.remove();
                    } else {
                        f15043b.set(l2);
                    }
                    Cursor cursor2 = dveVar2.f14887a;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    k.set(dveVar);
                    return dxwVar;
                }
            }
            throw new eps("No acceptable module " + str + " found. Local version is " + v.f12061a + " and remote version is " + v.f12062b + ".");
        } catch (Throwable th11) {
            th = th11;
            if (j2 == j3) {
                f15043b.remove();
            } else {
                f15043b.set(l2);
            }
            Cursor cursor3 = dveVar2.f14887a;
            if (cursor3 != null) {
                cursor3.close();
            }
            k.set(dveVar);
            throw th;
        }
    }

    public static boolean u(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(i)) {
            return true;
        }
        boolean z = false;
        if (i == null) {
            ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            if (gna.i.l(context, 10000000) == 0 && resolveContentProvider != null && "com.google.android.gms".equals(resolveContentProvider.packageName)) {
                z = true;
            }
            i = Boolean.valueOf(z);
            if (z && (applicationInfo = resolveContentProvider.applicationInfo) != null && (applicationInfo.flags & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA) == 0) {
                m = true;
            }
        }
        if (!z) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z;
    }

    public final IBinder v(String str) {
        try {
            return (IBinder) this.n.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e2) {
            throw new eps("Failed to instantiate module class: ".concat(str), e2);
        }
    }
}
