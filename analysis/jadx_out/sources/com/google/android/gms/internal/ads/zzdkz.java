package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import g.agd;
import g.akx;
import g.bjq;
import g.bpp;
import g.edt;
import g.esy;
import g.fso;
import g.gfc;
import g.gga;
import g.ti;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdkz implements zzdjg {

    /* renamed from: a, reason: collision with root package name */
    public final zzffo f6152a;

    /* renamed from: c, reason: collision with root package name */
    public final zzdej f6154c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbpr f6155d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f6156e;

    /* renamed from: f, reason: collision with root package name */
    public final zzbpv f6157f;

    /* renamed from: g, reason: collision with root package name */
    public final zzfet f6158g;
    public final zzbps h;
    public final zzcxe j;
    public final zzcwk l;
    public final akx m;
    public boolean i = false;
    public boolean k = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6153b = true;

    public zzdkz(zzbpr zzbprVar, zzbps zzbpsVar, zzbpv zzbpvVar, zzcxe zzcxeVar, zzcwk zzcwkVar, zzdej zzdejVar, Context context, zzfet zzfetVar, akx akxVar, zzffo zzffoVar) {
        this.f6155d = zzbprVar;
        this.h = zzbpsVar;
        this.f6157f = zzbpvVar;
        this.j = zzcxeVar;
        this.l = zzcwkVar;
        this.f6154c = zzdejVar;
        this.f6156e = context;
        this.f6158g = zzfetVar;
        this.m = akxVar;
        this.f6152a = zzffoVar;
    }

    public static final HashMap n(Map map) {
        HashMap hashMap = new HashMap();
        if (map == null) {
            return hashMap;
        }
        synchronized (map) {
            try {
                for (Map.Entry entry : map.entrySet()) {
                    View view = (View) ((WeakReference) entry.getValue()).get();
                    if (view != null) {
                        hashMap.put((String) entry.getKey(), view);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hashMap;
    }

    public final void o(View view) {
        zzbpv zzbpvVar = this.f6157f;
        zzdej zzdejVar = this.f6154c;
        zzcwk zzcwkVar = this.l;
        if (zzbpvVar != null) {
            try {
                if (!zzbpvVar.zzA()) {
                    zzbpvVar.zzw(new bpp(view));
                    zzcwkVar.onAdClicked();
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkt)).booleanValue()) {
                        zzdejVar.zzdG();
                        return;
                    }
                    return;
                }
            } catch (RemoteException unused) {
                zzfxd zzfxdVar = agd.f10175a;
                return;
            }
        }
        zzbpr zzbprVar = this.f6155d;
        if (zzbprVar != null && !zzbprVar.zzx()) {
            zzbprVar.zzs(new bpp(view));
            zzcwkVar.onAdClicked();
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkt)).booleanValue()) {
                zzdejVar.zzdG();
                return;
            }
            return;
        }
        zzbps zzbpsVar = this.h;
        if (zzbpsVar == null || zzbpsVar.zzv()) {
            return;
        }
        zzbpsVar.zzq(new bpp(view));
        zzcwkVar.onAdClicked();
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkt)).booleanValue()) {
            zzdejVar.zzdG();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final boolean zzA() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final boolean zzB() {
        return this.f6158g.zzL;
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final boolean zzC(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final JSONObject zze(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final JSONObject zzf(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzg() {
        agd.b("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzj(gga ggaVar) {
        agd.b("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzk(View view, View view2, Map map, Map map2, boolean z, ImageView.ScaleType scaleType) {
        if (this.k && this.f6158g.zzL) {
            return;
        }
        o(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzm(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzo(View view, View view2, Map map, Map map2, boolean z, ImageView.ScaleType scaleType, int i) {
        if (!this.k) {
            agd.b("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (this.f6158g.zzL) {
            o(view2);
        } else {
            agd.b("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzp() {
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzq(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        try {
            if (!this.i) {
                this.i = ti.f20033a.f20040g.o(this.f6156e, this.m.afmaVersion, this.f6158g.zzC.toString(), this.f6152a.zzf);
            }
            if (this.f6153b) {
                zzbpv zzbpvVar = this.f6157f;
                zzcxe zzcxeVar = this.j;
                if (zzbpvVar != null && !zzbpvVar.zzB()) {
                    zzbpvVar.zzx();
                    zzcxeVar.zza();
                    return;
                }
                zzbpr zzbprVar = this.f6155d;
                if (zzbprVar != null && !zzbprVar.zzy()) {
                    zzbprVar.zzt();
                    zzcxeVar.zza();
                    return;
                }
                zzbps zzbpsVar = this.h;
                if (zzbpsVar == null || zzbpsVar.zzw()) {
                    return;
                }
                zzbpsVar.zzr();
                zzcxeVar.zza();
            }
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzr() {
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzs(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzt(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzu(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzv() {
        this.k = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzw(gfc gfcVar) {
        agd.b("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzx(zzbhs zzbhsVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzy(View view, Map map, Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        Object obj;
        bjq zzn;
        try {
            bpp bppVar = new bpp(view);
            JSONObject jSONObject = this.f6158g.zzaj;
            boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbD)).booleanValue();
            zzbpv zzbpvVar = this.f6157f;
            zzbps zzbpsVar = this.h;
            zzbpr zzbprVar = this.f6155d;
            boolean z = true;
            if (booleanValue && jSONObject.length() != 0) {
                Map hashMap = map == null ? new HashMap() : map;
                Map hashMap2 = map2 == null ? new HashMap() : map2;
                HashMap hashMap3 = new HashMap();
                hashMap3.putAll(hashMap);
                hashMap3.putAll(hashMap2);
                Iterator<String> keys = jSONObject.keys();
                loop0: while (keys.hasNext()) {
                    String next = keys.next();
                    JSONArray optJSONArray = jSONObject.optJSONArray(next);
                    if (optJSONArray != null) {
                        WeakReference weakReference = (WeakReference) hashMap3.get(next);
                        if (weakReference != null && (obj = weakReference.get()) != null) {
                            Class<?> cls = obj.getClass();
                            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbE)).booleanValue() && next.equals("3010")) {
                                Object obj2 = null;
                                if (zzbpvVar != null) {
                                    try {
                                        zzn = zzbpvVar.zzn();
                                    } catch (RemoteException | IllegalArgumentException unused) {
                                    }
                                } else {
                                    zzn = zzbprVar != null ? zzbprVar.zzk() : zzbpsVar != null ? zzbpsVar.zzj() : null;
                                }
                                if (zzn != null) {
                                    obj2 = bpp.b(zzn);
                                }
                                if (obj2 != null) {
                                    cls = obj2.getClass();
                                }
                            }
                            try {
                                ArrayList arrayList = new ArrayList();
                                fso.af(optJSONArray, arrayList);
                                esy esyVar = ti.f20033a.z;
                                ClassLoader classLoader = this.f6156e.getClassLoader();
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    if (Class.forName((String) it.next(), false, classLoader).isAssignableFrom(cls)) {
                                        break;
                                    }
                                }
                            } catch (JSONException unused2) {
                                continue;
                            }
                        }
                        z = false;
                        break loop0;
                    }
                }
            }
            this.f6153b = z;
            HashMap n = n(map);
            HashMap n2 = n(map2);
            if (zzbpvVar != null) {
                zzbpvVar.zzy(bppVar, new bpp(n), new bpp(n2));
                return;
            }
            if (zzbprVar != null) {
                zzbprVar.zzv(bppVar, new bpp(n), new bpp(n2));
                zzbprVar.zzu(bppVar);
            } else if (zzbpsVar != null) {
                zzbpsVar.zzt(bppVar, new bpp(n), new bpp(n2));
                zzbpsVar.zzs(bppVar);
            }
        } catch (RemoteException unused3) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzz(View view, Map map) {
        try {
            bpp bppVar = new bpp(view);
            zzbpv zzbpvVar = this.f6157f;
            if (zzbpvVar != null) {
                zzbpvVar.zzz(bppVar);
                return;
            }
            zzbpr zzbprVar = this.f6155d;
            if (zzbprVar != null) {
                zzbprVar.zzw(bppVar);
                return;
            }
            zzbps zzbpsVar = this.h;
            if (zzbpsVar != null) {
                zzbpsVar.zzu(bppVar);
            }
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }
}
