package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import g.aky;
import java.io.File;
import java.util.HashSet;

/* loaded from: classes3.dex */
public final class zzfrl {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f8168a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final zzfqs f8169b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f8170c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f8171d;

    /* renamed from: e, reason: collision with root package name */
    public final SharedPreferences f8172e;

    /* renamed from: f, reason: collision with root package name */
    public final String f8173f;

    public zzfrl(Context context, int i, zzfqs zzfqsVar, boolean z) {
        this.f8170c = false;
        this.f8171d = context;
        this.f8173f = Integer.toString(i - 1);
        this.f8172e = context.getSharedPreferences("pcvmspf", 0);
        this.f8169b = zzfqsVar;
        this.f8170c = z;
    }

    public static String g(zzaxy zzaxyVar) {
        zzaxz zzd = zzayb.zzd();
        zzd.zze(zzaxyVar.zzc().zzk());
        zzd.zza(zzaxyVar.zzc().zzj());
        zzd.zzb(zzaxyVar.zzc().zza());
        zzd.zzd(zzaxyVar.zzc().zzc());
        zzd.zzc(zzaxyVar.zzc().zzb());
        return aky.ad(((zzayb) zzd.zzbr()).zzaV());
    }

    public final zzayb h(int i) {
        String str = this.f8173f;
        SharedPreferences sharedPreferences = this.f8172e;
        String string = i == 1 ? sharedPreferences.getString("LATMTD".concat(String.valueOf(str)), null) : sharedPreferences.getString("FBAMTD".concat(String.valueOf(str)), null);
        if (string != null) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                byte[] n = aky.n(string);
                return zzayb.zzi(zzgxp.zzv(n, 0, n.length), this.f8170c ? zzgyh.zza() : zzgyh.zzb());
            } catch (zzgzm unused) {
            } catch (NullPointerException unused2) {
                j(2029, currentTimeMillis);
            } catch (RuntimeException unused3) {
                j(2032, currentTimeMillis);
            }
        }
        return null;
    }

    public final File i(String str) {
        return new File(new File(this.f8171d.getDir("pccache", 0), this.f8173f), str);
    }

    public final void j(int i, long j) {
        this.f8169b.zza(i, j);
    }

    public final boolean zza(zzaxy zzaxyVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f8168a) {
            try {
                if (!zzfrf.zze(new File(i(zzaxyVar.zzc().zzk()), "pcbc"), zzaxyVar.zzd().zzA())) {
                    j(4020, currentTimeMillis);
                    return false;
                }
                String g2 = g(zzaxyVar);
                SharedPreferences.Editor edit = this.f8172e.edit();
                edit.putString("LATMTD".concat(String.valueOf(this.f8173f)), g2);
                boolean commit = edit.commit();
                if (commit) {
                    j(5015, currentTimeMillis);
                } else {
                    j(4021, currentTimeMillis);
                }
                return commit;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzb(zzaxy zzaxyVar, zzfrk zzfrkVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f8168a) {
            try {
                zzayb h = h(1);
                String zzk = zzaxyVar.zzc().zzk();
                if (h != null && h.zzk().equals(zzk)) {
                    j(4014, currentTimeMillis);
                    return false;
                }
                long currentTimeMillis2 = System.currentTimeMillis();
                File i = i(zzk);
                if (i.exists()) {
                    this.f8169b.zzb(4023, currentTimeMillis2, "d:" + (true != i.isDirectory() ? "0" : "1") + ",f:" + (true != i.isFile() ? "0" : "1"));
                    j(4015, currentTimeMillis2);
                } else if (!i.mkdirs()) {
                    this.f8169b.zzb(4024, currentTimeMillis2, "cw:".concat(true != i.canWrite() ? "0" : "1"));
                    j(4015, currentTimeMillis2);
                    return false;
                }
                File i2 = i(zzk);
                File file = new File(i2, "pcam.jar");
                File file2 = new File(i2, "pcbc");
                if (!zzfrf.zze(file, zzaxyVar.zzf().zzA())) {
                    j(4016, currentTimeMillis);
                    return false;
                }
                if (!zzfrf.zze(file2, zzaxyVar.zzd().zzA())) {
                    j(4017, currentTimeMillis);
                    return false;
                }
                if (zzfrkVar != null && !zzfrkVar.zza(file)) {
                    j(4018, currentTimeMillis);
                    zzfrf.zzd(i2);
                    return false;
                }
                String g2 = g(zzaxyVar);
                long currentTimeMillis3 = System.currentTimeMillis();
                String string = this.f8172e.getString("LATMTD".concat(String.valueOf(this.f8173f)), null);
                SharedPreferences.Editor edit = this.f8172e.edit();
                edit.putString("LATMTD".concat(String.valueOf(this.f8173f)), g2);
                if (string != null) {
                    edit.putString("FBAMTD".concat(String.valueOf(this.f8173f)), string);
                }
                if (!edit.commit()) {
                    j(4019, currentTimeMillis3);
                    return false;
                }
                HashSet hashSet = new HashSet();
                zzayb h2 = h(1);
                if (h2 != null) {
                    hashSet.add(h2.zzk());
                }
                zzayb h3 = h(2);
                if (h3 != null) {
                    hashSet.add(h3.zzk());
                }
                for (File file3 : new File(this.f8171d.getDir("pccache", 0), this.f8173f).listFiles()) {
                    if (!hashSet.contains(file3.getName())) {
                        zzfrf.zzd(file3);
                    }
                }
                j(5014, currentTimeMillis);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzfrd zzc(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f8168a) {
            try {
                zzayb h = h(1);
                if (h == null) {
                    j(4022, currentTimeMillis);
                    return null;
                }
                File i2 = i(h.zzk());
                File file = new File(i2, "pcam.jar");
                if (!file.exists()) {
                    file = new File(i2, "pcam");
                }
                File file2 = new File(i2, "pcbc");
                File file3 = new File(i2, "pcopt");
                j(5016, currentTimeMillis);
                return new zzfrd(h, file, file2, file3);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzd(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f8168a) {
            try {
                zzayb h = h(1);
                if (h == null) {
                    j(4025, currentTimeMillis);
                    return false;
                }
                File i2 = i(h.zzk());
                if (!new File(i2, "pcam.jar").exists()) {
                    j(4026, currentTimeMillis);
                    return false;
                }
                if (new File(i2, "pcbc").exists()) {
                    j(5019, currentTimeMillis);
                    return true;
                }
                j(4027, currentTimeMillis);
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
