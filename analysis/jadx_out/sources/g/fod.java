package g;

import android.content.ContentResolver;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class fod {

    /* renamed from: a, reason: collision with root package name */
    public static final tl f17130a = new tl(0);

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f17131b = {"key", "value"};

    /* renamed from: c, reason: collision with root package name */
    public final ak f17132c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f17133d;

    /* renamed from: e, reason: collision with root package name */
    public final ContentResolver f17134e;

    /* renamed from: f, reason: collision with root package name */
    public volatile Map f17135f;

    /* renamed from: g, reason: collision with root package name */
    public final Uri f17136g;
    public final Runnable h;
    public final ArrayList i;

    public fod(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        ak akVar = new ak(this);
        this.f17132c = akVar;
        this.f17133d = new Object();
        this.i = new ArrayList();
        contentResolver.getClass();
        uri.getClass();
        this.f17134e = contentResolver;
        this.f17136g = uri;
        this.h = runnable;
        contentResolver.registerContentObserver(uri, false, akVar);
    }

    public static fod j(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        fod fodVar;
        synchronized (fod.class) {
            tl tlVar = f17130a;
            fodVar = (fod) tlVar.get(uri);
            if (fodVar == null) {
                try {
                    fod fodVar2 = new fod(contentResolver, uri, runnable);
                    try {
                        tlVar.put(uri, fodVar2);
                    } catch (SecurityException unused) {
                    }
                    fodVar = fodVar2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return fodVar;
    }

    public static synchronized void k() {
        synchronized (fod.class) {
            try {
                Iterator it = ((bow) f17130a.values()).iterator();
                while (it.hasNext()) {
                    fod fodVar = (fod) it.next();
                    fodVar.f17134e.unregisterContentObserver(fodVar.f17132c);
                }
                f17130a.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [android.os.StrictMode$ThreadPolicy, java.util.Map] */
    public final Map l() {
        Map map;
        Map map2;
        Object d2;
        Map map3 = this.f17135f;
        Map map4 = map3;
        if (map3 == null) {
            synchronized (this.f17133d) {
                ?? r0 = this.f17135f;
                map2 = r0;
                if (r0 == 0) {
                    try {
                        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            bzv bzvVar = new bzv(5, this);
                            try {
                                d2 = bzvVar.d();
                            } catch (SecurityException unused) {
                                long clearCallingIdentity = Binder.clearCallingIdentity();
                                try {
                                    d2 = bzvVar.d();
                                } finally {
                                    Binder.restoreCallingIdentity(clearCallingIdentity);
                                }
                            }
                            map = (Map) d2;
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                        } catch (SQLiteException | IllegalStateException | SecurityException unused2) {
                            Log.e("ConfigurationContentLdr", "PhenotypeFlag unable to load ContentProvider, using default values");
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                            map = null;
                        }
                        this.f17135f = map;
                        map2 = map;
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(r0);
                        throw th;
                    }
                }
            }
            map4 = map2;
        }
        return map4 != null ? map4 : Collections.EMPTY_MAP;
    }
}
