package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzfy extends zzfw {

    /* renamed from: a, reason: collision with root package name */
    public int f8223a;

    /* renamed from: b, reason: collision with root package name */
    public Uri f8224b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f8225c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8226d;

    /* renamed from: e, reason: collision with root package name */
    public final zzfx f8227e;

    /* renamed from: f, reason: collision with root package name */
    public int f8228f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfy(byte[] bArr) {
        super(false);
        zzfx zzfxVar = new zzfx(bArr);
        this.f8227e = zzfxVar;
        zzdb.zzd(bArr.length > 0);
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f8223a;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        byte[] bArr2 = this.f8225c;
        zzdb.zzb(bArr2);
        System.arraycopy(bArr2, this.f8228f, bArr, i, min);
        this.f8228f += min;
        this.f8223a -= min;
        zzg(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final long zzb(zzgi zzgiVar) throws IOException {
        x(zzgiVar);
        this.f8224b = zzgiVar.zza;
        byte[] bArr = this.f8227e.zza;
        this.f8225c = bArr;
        long j = zzgiVar.zze;
        int length = bArr.length;
        if (j > length) {
            throw new zzge(2008);
        }
        int i = (int) j;
        this.f8228f = i;
        int i2 = length - i;
        this.f8223a = i2;
        long j2 = zzgiVar.zzf;
        if (j2 != -1) {
            this.f8223a = (int) Math.min(i2, j2);
        }
        this.f8226d = true;
        y(zzgiVar);
        long j3 = zzgiVar.zzf;
        return j3 != -1 ? j3 : this.f8223a;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        return this.f8224b;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() {
        if (this.f8226d) {
            this.f8226d = false;
            w();
        }
        this.f8224b = null;
        this.f8225c = null;
    }
}
