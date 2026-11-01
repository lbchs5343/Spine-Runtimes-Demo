package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class u extends zzaqy {

    /* renamed from: a, reason: collision with root package name */
    public static final u f3985a = new u();

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final zzarc zza(String str, byte[] bArr, String str2) {
        return "moov".equals(str) ? new zzare() : "mvhd".equals(str) ? new zzarf() : new zzarg(str);
    }
}
