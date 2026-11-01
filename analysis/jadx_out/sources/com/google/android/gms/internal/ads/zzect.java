package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.internal.ads.zzbbs;
import g.gil;

/* loaded from: classes3.dex */
public final class zzect extends zzecu {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseArray f6816a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcvq f6817b;

    /* renamed from: c, reason: collision with root package name */
    public final TelephonyManager f6818c;

    /* renamed from: d, reason: collision with root package name */
    public final zzecl f6819d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f6820e;

    /* renamed from: f, reason: collision with root package name */
    public zzbbs.zzq f6821f;

    static {
        SparseArray sparseArray = new SparseArray();
        f6816a = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzbbs.zzaf.zzd.CONNECTED);
        int ordinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        zzbbs.zzaf.zzd zzdVar = zzbbs.zzaf.zzd.CONNECTING;
        sparseArray.put(ordinal, zzdVar);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzdVar);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzdVar);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzbbs.zzaf.zzd.DISCONNECTING);
        int ordinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        zzbbs.zzaf.zzd zzdVar2 = zzbbs.zzaf.zzd.DISCONNECTED;
        sparseArray.put(ordinal2, zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzbbs.zzaf.zzd.SUSPENDED);
        sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzdVar);
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzdVar);
    }

    public zzect(Context context, zzcvq zzcvqVar, zzecl zzeclVar, zzech zzechVar, gil gilVar) {
        super(zzechVar, gilVar);
        this.f6820e = context;
        this.f6817b = zzcvqVar;
        this.f6819d = zzeclVar;
        this.f6818c = (TelephonyManager) context.getSystemService("phone");
    }

    public final void zzd(boolean z) {
        zzgei.zzr(this.f6817b.zzb(new Bundle()), new a(this, z), zzcaj.zzf);
    }
}
