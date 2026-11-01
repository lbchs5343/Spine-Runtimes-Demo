package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import g.agd;
import g.bpp;
import g.cue;
import g.ead;
import g.ecj;
import g.ggt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbud {

    /* renamed from: a, reason: collision with root package name */
    public final View f4999a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbzh f5000b;

    public zzbud(zzbuc zzbucVar) {
        View view = zzbucVar.f4997a;
        this.f4999a = view;
        HashMap hashMap = zzbucVar.f4998b;
        zzbzh zza = zzbtx.zza(view.getContext());
        this.f5000b = zza;
        if (zza == null || hashMap.isEmpty()) {
            return;
        }
        try {
            zza.zzg(new zzbue(new bpp(view), new bpp(hashMap)));
        } catch (RemoteException unused) {
            agd.d("Failed to call remote method.");
        }
    }

    public final void zza(List list) {
        if (list == null || list.isEmpty()) {
            agd.b("No click urls were passed to recordClick");
            return;
        }
        zzbzh zzbzhVar = this.f5000b;
        if (zzbzhVar == null) {
            agd.b("Failed to get internal reporting info generator in recordClick.");
        }
        try {
            zzbzhVar.zzh(list, new bpp(this.f4999a), new cue(1, list));
        } catch (RemoteException e2) {
            agd.d("RemoteException recording click: ".concat(e2.toString()));
        }
    }

    public final void zzb(List list) {
        if (list == null || list.isEmpty()) {
            agd.b("No impression urls were passed to recordImpression");
            return;
        }
        zzbzh zzbzhVar = this.f5000b;
        if (zzbzhVar == null) {
            agd.b("Failed to get internal reporting info generator from recordImpression.");
            return;
        }
        try {
            zzbzhVar.zzi(list, new bpp(this.f4999a), new cue(0, list));
        } catch (RemoteException e2) {
            agd.d("RemoteException recording impression urls: ".concat(e2.toString()));
        }
    }

    public final void zzc(MotionEvent motionEvent) {
        zzbzh zzbzhVar = this.f5000b;
        if (zzbzhVar == null) {
            agd.c("Failed to get internal reporting info generator.");
            return;
        }
        try {
            zzbzhVar.zzk(new bpp(motionEvent));
        } catch (RemoteException unused) {
            agd.d("Failed to call remote method.");
        }
    }

    public final void zzd(Uri uri, ggt ggtVar) {
        zzbzh zzbzhVar = this.f5000b;
        zzbzhVar.getClass();
        try {
            zzbzhVar.zzl(new ArrayList(Arrays.asList(uri)), new bpp(this.f4999a), new ecj(1));
        } catch (RemoteException e2) {
            "Internal error: ".concat(e2.toString());
            throw null;
        }
    }

    public final void zze(List list, ead eadVar) {
        zzbzh zzbzhVar = this.f5000b;
        zzbzhVar.getClass();
        try {
            zzbzhVar.zzm(list, new bpp(this.f4999a), new ecj(0));
        } catch (RemoteException e2) {
            "Internal error: ".concat(e2.toString());
            throw null;
        }
    }
}
