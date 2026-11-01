package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import g.abn;
import g.agd;
import g.egh;
import g.exk;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbax extends exk {
    public static final Parcelable.Creator<zzbax> CREATOR = new zzbay();
    public final String zza;
    public final long zzb;
    public final String zzc;
    public final String zzd;
    public final String zze;
    public final Bundle zzf;
    public final boolean zzg;
    public long zzh;
    public String zzi;
    public int zzj;

    public zzbax(String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z, long j2, String str5, int i) {
        this.zza = str;
        this.zzb = j;
        this.zzc = str2 == null ? "" : str2;
        this.zzd = str3 == null ? "" : str3;
        this.zze = str4 == null ? "" : str4;
        this.zzf = bundle == null ? new Bundle() : bundle;
        this.zzg = z;
        this.zzh = j2;
        this.zzi = str5;
        this.zzj = i;
    }

    public static zzbax zza(Uri uri) {
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                agd.b("Expected 2 path parts for namespace and id, found :" + pathSegments.size());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter(abn.EXTRA_URL);
            boolean equals = "1".equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            long parseLong = queryParameter2 == null ? 0L : Long.parseLong(queryParameter2);
            Bundle bundle = new Bundle();
            for (String str3 : uri.getQueryParameterNames()) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new zzbax(queryParameter, parseLong, host, str, str2, bundle, equals, 0L, "", 0);
        } catch (NullPointerException | NumberFormatException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 2, str);
        long j = this.zzb;
        egh.aq(parcel, 3, 8);
        parcel.writeLong(j);
        egh.p(parcel, 4, this.zzc);
        egh.p(parcel, 5, this.zzd);
        egh.p(parcel, 6, this.zze);
        egh.ac(parcel, 7, this.zzf);
        boolean z = this.zzg;
        egh.aq(parcel, 8, 4);
        parcel.writeInt(z ? 1 : 0);
        long j2 = this.zzh;
        egh.aq(parcel, 9, 8);
        parcel.writeLong(j2);
        egh.p(parcel, 10, this.zzi);
        int i2 = this.zzj;
        egh.aq(parcel, 11, 4);
        parcel.writeInt(i2);
        egh.s(parcel, af);
    }
}
