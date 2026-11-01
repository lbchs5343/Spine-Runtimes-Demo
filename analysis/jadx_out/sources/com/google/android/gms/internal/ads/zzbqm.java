package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.RemoteException;
import g.agd;
import g.ags;
import g.apq;
import g.bza;
import g.cpm;
import g.cxt;
import g.fx;
import g.gyv;
import g.ov;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzbqm implements ags {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4934b;

    /* renamed from: c, reason: collision with root package name */
    public final Location f4935c;

    /* renamed from: d, reason: collision with root package name */
    public final Date f4936d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4937e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f4938f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4939g;
    public final Set i;
    public final zzbfn j;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4933a = new ArrayList();
    public final HashMap h = new HashMap();

    public zzbqm(Date date, int i, Set set, Location location, boolean z, int i2, zzbfn zzbfnVar, List list, boolean z2, int i3, String str) {
        this.f4936d = date;
        this.f4939g = i;
        this.i = set;
        this.f4935c = location;
        this.f4934b = z;
        this.f4937e = i2;
        this.j = zzbfnVar;
        this.f4938f = z2;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (str2.startsWith("custom:")) {
                    String[] split = str2.split(":", 3);
                    if (split.length == 3) {
                        if ("true".equals(split[2])) {
                            this.h.put(split[1], Boolean.TRUE);
                        } else if ("false".equals(split[2])) {
                            this.h.put(split[1], Boolean.FALSE);
                        }
                    }
                } else {
                    this.f4933a.add(str2);
                }
            }
        }
    }

    public final float getAdVolume() {
        bza l = bza.l();
        synchronized (l.k) {
            apq apqVar = l.f12482c;
            float f2 = 1.0f;
            if (apqVar == null) {
                return 1.0f;
            }
            try {
                f2 = apqVar.zze();
            } catch (RemoteException e2) {
                agd.f("Unable to get app volume.", e2);
            }
            return f2;
        }
    }

    @Deprecated
    public final Date getBirthday() {
        return this.f4936d;
    }

    @Deprecated
    public final int getGender() {
        return this.f4939g;
    }

    @Override // g.clz
    public final Set<String> getKeywords() {
        return this.i;
    }

    public final Location getLocation() {
        return this.f4935c;
    }

    @Override // g.ags
    public final gyv getNativeAdOptions() {
        fx fxVar = new fx();
        zzbfn zzbfnVar = this.j;
        if (zzbfnVar == null) {
            return new gyv(fxVar);
        }
        int i = zzbfnVar.zza;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    fxVar.f17565g = zzbfnVar.zzg;
                    fxVar.f17564f = zzbfnVar.zzh;
                }
                fxVar.f17561c = zzbfnVar.zzb;
                fxVar.f17563e = zzbfnVar.zzc;
                fxVar.f17559a = zzbfnVar.zzd;
                return new gyv(fxVar);
            }
            cpm cpmVar = zzbfnVar.zzf;
            if (cpmVar != null) {
                fxVar.f17560b = new cxt(cpmVar);
            }
        }
        fxVar.f17562d = zzbfnVar.zze;
        fxVar.f17561c = zzbfnVar.zzb;
        fxVar.f17563e = zzbfnVar.zzc;
        fxVar.f17559a = zzbfnVar.zzd;
        return new gyv(fxVar);
    }

    @Override // g.ags
    public final ov getNativeAdRequestOptions() {
        return zzbfn.zza(this.j);
    }

    public final boolean isAdMuted() {
        bza l = bza.l();
        synchronized (l.k) {
            apq apqVar = l.f12482c;
            boolean z = false;
            if (apqVar == null) {
                return false;
            }
            try {
                z = apqVar.zzv();
            } catch (RemoteException e2) {
                agd.f("Unable to get app mute state.", e2);
            }
            return z;
        }
    }

    @Override // g.clz
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.f4938f;
    }

    @Override // g.clz
    public final boolean isTesting() {
        return this.f4934b;
    }

    @Override // g.ags
    public final boolean isUnifiedNativeAdRequested() {
        return this.f4933a.contains("6");
    }

    @Override // g.clz
    public final int taggedForChildDirectedTreatment() {
        return this.f4937e;
    }

    @Override // g.ags
    public final Map zza() {
        return this.h;
    }

    @Override // g.ags
    public final boolean zzb() {
        return this.f4933a.contains("3");
    }
}
