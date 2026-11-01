package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public class zzhg {

    /* renamed from: a, reason: collision with root package name */
    public int f8737a;

    public final boolean b(int i) {
        return (this.f8737a & i) == i;
    }

    public final void zza(int i) {
        this.f8737a |= C.ENCODING_PCM_A_LAW;
    }

    public void zzb() {
        this.f8737a = 0;
    }

    public final void zzc(int i) {
        this.f8737a = i;
    }

    public final boolean zze() {
        return b(C.ENCODING_PCM_MU_LAW);
    }

    public final boolean zzf() {
        return b(4);
    }

    public final boolean zzg() {
        return b(1);
    }

    public final boolean zzh() {
        return b(C.ENCODING_PCM_A_LAW);
    }

    public final boolean zzi() {
        return b(TTAdConstant.KEY_CLICK_AREA);
    }
}
