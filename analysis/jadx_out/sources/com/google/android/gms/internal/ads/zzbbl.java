package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.os.SystemClock;
import android.util.Base64;
import com.google.android.gms.internal.ads.zzbbs;
import g.agd;
import g.edt;
import g.esy;
import g.ti;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzbbl {

    /* renamed from: a, reason: collision with root package name */
    public final zzbbr f4691a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbbs.zzt.zza f4692b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4693c;

    public zzbbl() {
        this.f4692b = zzbbs.zzt.zzj();
        this.f4693c = false;
        this.f4691a = new zzbbr();
    }

    public zzbbl(zzbbr zzbbrVar) {
        this.f4692b = zzbbs.zzt.zzj();
        this.f4691a = zzbbrVar;
        this.f4693c = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeV)).booleanValue();
    }

    public static zzbbl zza() {
        return new zzbbl();
    }

    public final synchronized String d(int i) {
        StringBuilder sb;
        String zzah = this.f4692b.zzah();
        ti.f20033a.v.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        String encodeToString = Base64.encodeToString(this.f4692b.zzbr().zzaV(), 3);
        sb = new StringBuilder("id=");
        sb.append(zzah);
        sb.append(",timestamp=");
        sb.append(elapsedRealtime);
        sb.append(",event=");
        sb.append(i - 1);
        sb.append(",data=");
        sb.append(encodeToString);
        sb.append("\n");
        return sb.toString();
    }

    public final synchronized void e(int i) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(zzfsc.zza(zzfsb.zza(), externalStorageDirectory, "clearcut_events.txt")), true);
            try {
                try {
                    fileOutputStream.write(d(i).getBytes());
                } catch (IOException unused) {
                    agd.e("Could not write Clearcut to file.");
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused2) {
                        agd.e("Could not close Clearcut output stream.");
                    }
                }
            } finally {
                try {
                    fileOutputStream.close();
                } catch (IOException unused3) {
                    agd.e("Could not close Clearcut output stream.");
                }
            }
        } catch (FileNotFoundException unused4) {
            agd.e("Could not find file for Clearcut");
        }
    }

    public final synchronized void f(int i) {
        zzbbs.zzt.zza zzaVar = this.f4692b;
        zzaVar.zzq();
        zzaVar.zzj(esy.aa());
        zzbbp zzbbpVar = new zzbbp(this.f4691a, this.f4692b.zzbr().zzaV());
        int i2 = i - 1;
        zzbbpVar.zza(i2);
        zzbbpVar.zzc();
        agd.e("Logging Event with event code : ".concat(String.valueOf(Integer.toString(i2, 10))));
    }

    public final synchronized void zzb(zzbbk zzbbkVar) {
        if (this.f4693c) {
            try {
                zzbbkVar.zza(this.f4692b);
            } catch (NullPointerException e2) {
                ti.f20033a.f20034ab.zzw(e2, "AdMobClearcutLogger.modify");
            }
        }
    }

    public final synchronized void zzc(int i) {
        if (this.f4693c) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeW)).booleanValue()) {
                e(i);
            } else {
                f(i);
            }
        }
    }
}
