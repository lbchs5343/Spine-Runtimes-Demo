package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import g.alh;
import g.bay;
import g.bhz;
import g.bjq;
import g.bpp;
import g.dhn;
import g.dhq;
import g.ejs;
import g.flf;
import g.fnq;
import g.sp;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbov extends zzchf {

    /* renamed from: a, reason: collision with root package name */
    public final fnq f4911a;

    public zzbov(fnq fnqVar) {
        this.f4911a = fnqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final int zzb(String str) throws RemoteException {
        return ((bhz) this.f4911a.f17099f).m(str);
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final long zzc() throws RemoteException {
        return ((bhz) this.f4911a.f17099f).i();
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final Bundle zzd(Bundle bundle) throws RemoteException {
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bay bayVar = new bay();
        bhzVar.l(new dhn(bhzVar, bundle, bayVar));
        return bayVar.d(PushUIConfig.dismissTime);
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final String zze() throws RemoteException {
        return ((bhz) this.f4911a.f17099f).f11619c;
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final String zzf() throws RemoteException {
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bay bayVar = new bay();
        bhzVar.l(new flf(bhzVar, bayVar, 1));
        return (String) bay.c(String.class, bayVar.d(50L));
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final String zzg() throws RemoteException {
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bay bayVar = new bay();
        bhzVar.l(new flf(bhzVar, bayVar, 4));
        return (String) bay.c(String.class, bayVar.d(500L));
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final String zzh() throws RemoteException {
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bay bayVar = new bay();
        bhzVar.l(new flf(bhzVar, bayVar, 3));
        return (String) bay.c(String.class, bayVar.d(500L));
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final String zzi() throws RemoteException {
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bay bayVar = new bay();
        bhzVar.l(new flf(bhzVar, bayVar, 0));
        return (String) bay.c(String.class, bayVar.d(500L));
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final List zzj(String str, String str2) throws RemoteException {
        return ((bhz) this.f4911a.f17099f).k(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final Map zzk(String str, String str2, boolean z) throws RemoteException {
        return ((bhz) this.f4911a.f17099f).n(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final void zzl(String str) throws RemoteException {
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bhzVar.l(new alh(bhzVar, str, 0));
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final void zzm(String str, String str2, Bundle bundle) throws RemoteException {
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bhzVar.l(new ejs(bhzVar, str, str2, bundle, 0));
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final void zzn(String str) throws RemoteException {
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bhzVar.l(new alh(bhzVar, str, 1));
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final void zzo(String str, String str2, Bundle bundle) throws RemoteException {
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bhzVar.l(new sp(bhzVar, str, str2, bundle, true));
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final void zzp(Bundle bundle) throws RemoteException {
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bhzVar.l(new dhn(bhzVar, bundle, new bay()));
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final void zzq(Bundle bundle) throws RemoteException {
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bhzVar.l(new dhq(bhzVar, bundle, 0));
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final void zzr(Bundle bundle) throws RemoteException {
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bhzVar.l(new dhq(bhzVar, bundle, 1));
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final void zzs(bjq bjqVar, String str, String str2) throws RemoteException {
        Activity activity = bjqVar != null ? (Activity) bpp.b(bjqVar) : null;
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bhzVar.l(new ejs(bhzVar, activity, str, str2));
    }

    @Override // com.google.android.gms.internal.ads.zzchg
    public final void zzt(String str, String str2, bjq bjqVar) throws RemoteException {
        Object b2 = bjqVar != null ? bpp.b(bjqVar) : null;
        bhz bhzVar = (bhz) this.f4911a.f17099f;
        bhzVar.l(new ejs(bhzVar, str, str2, b2, 3));
    }
}
