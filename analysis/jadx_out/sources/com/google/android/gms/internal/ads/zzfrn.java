package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import dalvik.system.DexClassLoader;
import g.gkr;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzfrn {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f8174a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final zzfpk f8175b;

    /* renamed from: c, reason: collision with root package name */
    public gkr f8176c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f8177d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f8178e = new Object();

    /* renamed from: f, reason: collision with root package name */
    public final zzfro f8179f;

    /* renamed from: g, reason: collision with root package name */
    public final zzfpp f8180g;

    public zzfrn(Context context, zzfro zzfroVar, zzfpp zzfppVar, zzfpk zzfpkVar) {
        this.f8177d = context;
        this.f8179f = zzfroVar;
        this.f8180g = zzfppVar;
        this.f8175b = zzfpkVar;
    }

    public final synchronized Class h(zzfrd zzfrdVar) {
        try {
            String zzk = zzfrdVar.zza().zzk();
            HashMap hashMap = f8174a;
            Class cls = (Class) hashMap.get(zzk);
            if (cls != null) {
                return cls;
            }
            try {
                if (!this.f8175b.zza(zzfrdVar.zzc())) {
                    throw new zzfrm(2026, "VM did not pass signature verification");
                }
                try {
                    File zzb = zzfrdVar.zzb();
                    if (!zzb.exists()) {
                        zzb.mkdirs();
                    }
                    Class<?> loadClass = new DexClassLoader(zzfrdVar.zzc().getAbsolutePath(), zzb.getAbsolutePath(), null, this.f8177d.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                    hashMap.put(zzk, loadClass);
                    return loadClass;
                } catch (ClassNotFoundException e2) {
                    e = e2;
                    throw new zzfrm(2008, e);
                } catch (IllegalArgumentException e3) {
                    e = e3;
                    throw new zzfrm(2008, e);
                } catch (SecurityException e4) {
                    e = e4;
                    throw new zzfrm(2008, e);
                }
            } catch (GeneralSecurityException e5) {
                throw new zzfrm(2026, e5);
            }
        } finally {
        }
    }

    public final zzfps zza() {
        gkr gkrVar;
        synchronized (this.f8178e) {
            gkrVar = this.f8176c;
        }
        return gkrVar;
    }

    public final zzfrd zzb() {
        synchronized (this.f8178e) {
            try {
                gkr gkrVar = this.f8176c;
                if (gkrVar == null) {
                    return null;
                }
                return (zzfrd) gkrVar.f18321a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzc(zzfrd zzfrdVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                gkr gkrVar = new gkr(h(zzfrdVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.f8177d, "msa-r", zzfrdVar.zze(), null, new Bundle(), 2), zzfrdVar, this.f8179f, this.f8180g, 11);
                if (!gkrVar.g()) {
                    throw new zzfrm(TTAdConstant.INIT_LOCAL_FAIL_CODE, "init failed");
                }
                int v = gkrVar.v();
                if (v != 0) {
                    throw new zzfrm(TTAdConstant.INIT_LOAD_VMP_SO_FAIL_CODE, "ci: " + v);
                }
                synchronized (this.f8178e) {
                    gkr gkrVar2 = this.f8176c;
                    if (gkrVar2 != null) {
                        try {
                            gkrVar2.ae();
                        } catch (zzfrm e2) {
                            this.f8180g.zzc(e2.zza(), -1L, e2);
                        }
                    }
                    this.f8176c = gkrVar;
                }
                this.f8180g.zzd(3000, System.currentTimeMillis() - currentTimeMillis);
                return true;
            } catch (Exception e3) {
                throw new zzfrm(2004, e3);
            }
        } catch (zzfrm e4) {
            this.f8180g.zzc(e4.zza(), System.currentTimeMillis() - currentTimeMillis, e4);
            return false;
        } catch (Exception e5) {
            this.f8180g.zzc(4010, System.currentTimeMillis() - currentTimeMillis, e5);
            return false;
        }
    }
}
