package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import g.agd;
import g.bmt;
import g.bof;
import g.bpp;
import g.dpt;
import g.fas;
import g.gcq;
import g.ls;

/* loaded from: classes3.dex */
public final class zzbab extends ls {

    /* renamed from: a, reason: collision with root package name */
    public fas f4665a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbaf f4666b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4667c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbac f4668d = new zzbac();

    public zzbab(zzbaf zzbafVar, String str) {
        this.f4666b = zzbafVar;
        this.f4667c = str;
    }

    public final String getAdUnitId() {
        return this.f4667c;
    }

    public final fas getFullScreenContentCallback() {
        return this.f4665a;
    }

    public final dpt getOnPaidEventListener() {
        return null;
    }

    @Override // g.ls
    public final bof getResponseInfo() {
        gcq gcqVar;
        try {
            gcqVar = this.f4666b.zzf();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            gcqVar = null;
        }
        return new bof(gcqVar);
    }

    public final void setFullScreenContentCallback(fas fasVar) {
        this.f4665a = fasVar;
        this.f4668d.zzg(fasVar);
    }

    public final void setImmersiveMode(boolean z) {
        try {
            this.f4666b.zzg(z);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void setOnPaidEventListener(dpt dptVar) {
        try {
            this.f4666b.zzh(new bmt());
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.ls
    public final void show(Activity activity) {
        try {
            this.f4666b.zzi(new bpp(activity), this.f4668d);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }
}
