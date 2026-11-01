package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import g.agd;
import g.edt;
import g.esy;
import g.ti;
import java.io.IOException;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzcdz implements Runnable {
    public final /* synthetic */ zzcea zza;

    public /* synthetic */ zzcdz(zzcea zzceaVar) {
        this.zza = zzceaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        edt edtVar;
        long longValue;
        long intValue;
        boolean booleanValue;
        edt edtVar2;
        long j;
        long j2;
        long j3;
        zzcea zzceaVar = this.zza;
        String l = zzcea.l(zzceaVar.i);
        try {
            zzbce zzbceVar = zzbcn.zzH;
            edtVar = edt.f15376a;
            longValue = ((Long) edtVar.f15379d.zza(zzbceVar)).longValue() * 1000;
            intValue = ((Integer) edtVar.f15379d.zza(zzbcn.zzr)).intValue();
            booleanValue = ((Boolean) edtVar.f15379d.zza(zzbcn.zzbW)).booleanValue();
        } catch (Exception e2) {
            agd.b("Failed to preload url " + zzceaVar.i + " Exception: " + e2.getMessage());
            ti.f20033a.f20034ab.zzv(e2, "VideoStreamExoPlayerCache.preload");
            zzceaVar.release();
            zzceaVar.zzg(zzceaVar.i, l, AVErrorInfo.ERROR, zzcea.m(AVErrorInfo.ERROR, e2));
        }
        synchronized (zzceaVar) {
            ti.f20033a.v.getClass();
            if (System.currentTimeMillis() - zzceaVar.j > longValue) {
                throw new IOException("Timeout reached. Limit: " + longValue + " ms");
            }
            if (zzceaVar.k) {
                throw new IOException("Abort requested before buffering finished. ");
            }
            if (!zzceaVar.f5219f) {
                if (!zzceaVar.h.zzV()) {
                    throw new IOException("ExoPlayer was released during preloading.");
                }
                long zzz = zzceaVar.h.zzz();
                if (zzz > 0) {
                    long zzv = zzceaVar.h.zzv();
                    if (zzv != zzceaVar.f5220g) {
                        boolean z = zzv > 0;
                        String str = zzceaVar.i;
                        long zzA = booleanValue ? zzceaVar.h.zzA() : -1L;
                        j3 = zzv;
                        j = intValue;
                        boolean z2 = z;
                        edtVar2 = edtVar;
                        j2 = zzz;
                        zzceaVar.zzo(str, l, j3, j2, z2, zzA, booleanValue ? zzceaVar.h.zzx() : -1L, booleanValue ? zzceaVar.h.zzB() : -1L, zzcbw.zzs(), zzcbw.zzu());
                        zzceaVar.f5220g = j3;
                    } else {
                        edtVar2 = edtVar;
                        j = intValue;
                        j2 = zzz;
                        j3 = zzv;
                    }
                    if (j3 >= j2) {
                        zzceaVar.zzj(zzceaVar.i, l, j2);
                    } else if (zzceaVar.h.zzw() >= j && j3 > 0) {
                    }
                } else {
                    edtVar2 = edtVar;
                }
                esy.f16117a.postDelayed(new zzcdz(zzceaVar), ((Long) edtVar2.f15379d.zza(zzbcn.zzI)).longValue());
                return;
            }
            ti.f20033a.x.zzc(zzceaVar.f5218e);
        }
    }
}
