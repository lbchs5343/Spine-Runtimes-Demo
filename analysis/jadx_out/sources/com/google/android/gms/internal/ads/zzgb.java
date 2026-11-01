package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Base64;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

/* loaded from: classes3.dex */
public final class zzgb extends zzfw {

    /* renamed from: a, reason: collision with root package name */
    public int f8247a;

    /* renamed from: b, reason: collision with root package name */
    public zzgi f8248b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f8249c;

    /* renamed from: d, reason: collision with root package name */
    public int f8250d;

    public zzgb() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f8247a;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        byte[] bArr2 = this.f8249c;
        int i4 = zzen.zza;
        System.arraycopy(bArr2, this.f8250d, bArr, i, min);
        this.f8250d += min;
        this.f8247a -= min;
        zzg(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final long zzb(zzgi zzgiVar) throws IOException {
        x(zzgiVar);
        this.f8248b = zzgiVar;
        Uri normalizeScheme = zzgiVar.zza.normalizeScheme();
        String scheme = normalizeScheme.getScheme();
        zzdb.zze("data".equals(scheme), "Unsupported scheme: ".concat(String.valueOf(scheme)));
        String schemeSpecificPart = normalizeScheme.getSchemeSpecificPart();
        int i = zzen.zza;
        String[] split = schemeSpecificPart.split(",", -1);
        if (split.length != 2) {
            throw zzbh.zzb("Unexpected URI format: ".concat(String.valueOf(normalizeScheme)), null);
        }
        String str = split[1];
        if (split[0].contains(";base64")) {
            try {
                this.f8249c = Base64.decode(str, 0);
            } catch (IllegalArgumentException e2) {
                throw zzbh.zzb("Error while parsing Base64 encoded string: ".concat(String.valueOf(str)), e2);
            }
        } else {
            this.f8249c = URLDecoder.decode(str, StandardCharsets.US_ASCII.name()).getBytes(StandardCharsets.UTF_8);
        }
        long j = zzgiVar.zze;
        int length = this.f8249c.length;
        if (j > length) {
            this.f8249c = null;
            throw new zzge(2008);
        }
        int i2 = (int) j;
        this.f8250d = i2;
        int i3 = length - i2;
        this.f8247a = i3;
        long j2 = zzgiVar.zzf;
        if (j2 != -1) {
            this.f8247a = (int) Math.min(i3, j2);
        }
        y(zzgiVar);
        long j3 = zzgiVar.zzf;
        return j3 != -1 ? j3 : this.f8247a;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        zzgi zzgiVar = this.f8248b;
        if (zzgiVar != null) {
            return zzgiVar.zza;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() {
        if (this.f8249c != null) {
            this.f8249c = null;
            w();
        }
        this.f8248b = null;
    }
}
