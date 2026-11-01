package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import g.aky;
import java.io.File;
import java.util.HashSet;

/* loaded from: classes3.dex */
public final class zzfre {

    /* renamed from: a, reason: collision with root package name */
    public final int f8164a;

    /* renamed from: b, reason: collision with root package name */
    public final File f8165b;

    /* renamed from: c, reason: collision with root package name */
    public final File f8166c;

    /* renamed from: d, reason: collision with root package name */
    public final SharedPreferences f8167d;

    public zzfre(Context context, int i) {
        this.f8167d = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        zzfrf.zza(dir, false);
        this.f8165b = dir;
        File dir2 = context.getDir("tmppccache", 0);
        zzfrf.zza(dir2, true);
        this.f8166c = dir2;
        this.f8164a = i;
    }

    public final zzayb e(int i) {
        String string;
        int i2 = this.f8164a;
        SharedPreferences sharedPreferences = this.f8167d;
        if (i == 1) {
            StringBuilder sb = new StringBuilder("LATMTD");
            sb.append(i2 - 1);
            string = sharedPreferences.getString(sb.toString(), null);
        } else {
            StringBuilder sb2 = new StringBuilder("FBAMTD");
            sb2.append(i2 - 1);
            string = sharedPreferences.getString(sb2.toString(), null);
        }
        if (!TextUtils.isEmpty(string)) {
            try {
                byte[] n = aky.n(string);
                zzayb zzh = zzayb.zzh(zzgxp.zzv(n, 0, n.length));
                String zzk = zzh.zzk();
                File zzb = zzfrf.zzb(zzk, "pcam.jar", f());
                if (!zzb.exists()) {
                    zzb = zzfrf.zzb(zzk, "pcam", f());
                }
                File zzb2 = zzfrf.zzb(zzk, "pcbc", f());
                if (zzb.exists()) {
                    if (zzb2.exists()) {
                        return zzh;
                    }
                }
            } catch (zzgzm unused) {
            }
        }
        return null;
    }

    public final File f() {
        File file = new File(this.f8165b, Integer.toString(this.f8164a - 1));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0174  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zza(zzaxy zzaxyVar, zzfrk zzfrkVar) {
        boolean z;
        zzayb e2;
        zzayb e3;
        String zzk = zzaxyVar.zzc().zzk();
        byte[] zzA = zzaxyVar.zzf().zzA();
        byte[] zzA2 = zzaxyVar.zzd().zzA();
        if (!TextUtils.isEmpty(zzk) && zzA2 != null && zzA2.length != 0) {
            File file = this.f8166c;
            zzfrf.zzd(file);
            file.mkdirs();
            zzfrf.zzc(zzk, file).mkdirs();
            File zzb = zzfrf.zzb(zzk, "pcam.jar", file);
            if ((zzA == null || zzA.length <= 0 || zzfrf.zze(zzb, zzA)) && zzfrf.zze(zzfrf.zzb(zzk, "pcbc", file), zzA2)) {
                File zzb2 = zzfrf.zzb(zzaxyVar.zzc().zzk(), "pcam.jar", file);
                if (!zzb2.exists() || zzfrkVar == null || zzfrkVar.zza(zzb2)) {
                    String zzk2 = zzaxyVar.zzc().zzk();
                    if (!TextUtils.isEmpty(zzk2)) {
                        File zzb3 = zzfrf.zzb(zzk2, "pcam.jar", file);
                        File zzb4 = zzfrf.zzb(zzk2, "pcbc", file);
                        File zzb5 = zzfrf.zzb(zzk2, "pcam.jar", f());
                        File zzb6 = zzfrf.zzb(zzk2, "pcbc", f());
                        if ((!zzb3.exists() || zzb3.renameTo(zzb5)) && zzb4.exists() && zzb4.renameTo(zzb6)) {
                            zzaxz zzd = zzayb.zzd();
                            zzd.zze(zzaxyVar.zzc().zzk());
                            zzd.zza(zzaxyVar.zzc().zzj());
                            zzd.zzb(zzaxyVar.zzc().zza());
                            zzd.zzd(zzaxyVar.zzc().zzc());
                            zzd.zzc(zzaxyVar.zzc().zzb());
                            zzayb zzaybVar = (zzayb) zzd.zzbr();
                            zzayb e4 = e(1);
                            SharedPreferences.Editor edit = this.f8167d.edit();
                            int i = this.f8164a;
                            if (e4 != null && !zzaybVar.zzk().equals(e4.zzk())) {
                                StringBuilder sb = new StringBuilder("FBAMTD");
                                sb.append(i - 1);
                                edit.putString(sb.toString(), aky.ad(e4.zzaV()));
                            }
                            StringBuilder sb2 = new StringBuilder("LATMTD");
                            sb2.append(i - 1);
                            edit.putString(sb2.toString(), aky.ad(zzaybVar.zzaV()));
                            if (edit.commit()) {
                                z = true;
                                HashSet hashSet = new HashSet();
                                e2 = e(1);
                                if (e2 != null) {
                                    hashSet.add(e2.zzk());
                                }
                                e3 = e(2);
                                if (e3 != null) {
                                    hashSet.add(e3.zzk());
                                }
                                for (File file2 : f().listFiles()) {
                                    String name = file2.getName();
                                    if (!hashSet.contains(name)) {
                                        zzfrf.zzd(zzfrf.zzc(name, f()));
                                    }
                                }
                                return z;
                            }
                        }
                    }
                    z = false;
                    HashSet hashSet2 = new HashSet();
                    e2 = e(1);
                    if (e2 != null) {
                    }
                    e3 = e(2);
                    if (e3 != null) {
                    }
                    while (r4 < r1) {
                    }
                    return z;
                }
            }
        }
        return false;
    }

    public final zzfrd zzc(int i) {
        zzayb e2 = e(1);
        if (e2 == null) {
            return null;
        }
        String zzk = e2.zzk();
        File zzb = zzfrf.zzb(zzk, "pcam.jar", f());
        if (!zzb.exists()) {
            zzb = zzfrf.zzb(zzk, "pcam", f());
        }
        return new zzfrd(e2, zzb, zzfrf.zzb(zzk, "pcbc", f()), zzfrf.zzb(zzk, "pcopt", f()));
    }
}
