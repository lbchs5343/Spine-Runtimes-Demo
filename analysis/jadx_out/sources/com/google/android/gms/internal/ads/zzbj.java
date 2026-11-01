package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class zzbj {
    public static final zzbj zza = new zzbj(1.0f, 1.0f);

    /* renamed from: a, reason: collision with root package name */
    public final int f4832a;
    public final float zzb;
    public final float zzc;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public zzbj(float f2, float f3) {
        zzdb.zzd(f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        zzdb.zzd(f3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.zzb = f2;
        this.zzc = f3;
        this.f4832a = Math.round(f2 * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbj.class == obj.getClass()) {
            zzbj zzbjVar = (zzbj) obj;
            if (this.zzb == zzbjVar.zzb && this.zzc == zzbjVar.zzc) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int floatToRawIntBits = Float.floatToRawIntBits(this.zzb) + 527;
        return Float.floatToRawIntBits(this.zzc) + (floatToRawIntBits * 31);
    }

    public final String toString() {
        return String.format(Locale.US, "PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.zzb), Float.valueOf(this.zzc));
    }

    public final long zza(long j) {
        return j * this.f4832a;
    }
}
