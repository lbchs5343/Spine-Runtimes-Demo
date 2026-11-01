package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.agd;
import g.cvb;
import g.czz;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzdkc implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public WeakReference f6123a;

    /* renamed from: b, reason: collision with root package name */
    public zzbhs f6124b;

    /* renamed from: c, reason: collision with root package name */
    public zzdkb f6125c;

    /* renamed from: d, reason: collision with root package name */
    public String f6126d;

    /* renamed from: e, reason: collision with root package name */
    public final zzdoc f6127e;

    /* renamed from: f, reason: collision with root package name */
    public final cvb f6128f;

    /* renamed from: g, reason: collision with root package name */
    public Long f6129g;

    public zzdkc(zzdoc zzdocVar, cvb cvbVar) {
        this.f6127e = zzdocVar;
        this.f6128f = cvbVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View view2;
        WeakReference weakReference = this.f6123a;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.f6126d != null && this.f6129g != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(TTDownloadField.TT_ID, this.f6126d);
            ((czz) this.f6128f).getClass();
            hashMap.put("time_interval", String.valueOf(System.currentTimeMillis() - this.f6129g.longValue()));
            hashMap.put("messageType", "onePointFiveClick");
            this.f6127e.zzj("sendMessageToNativeJs", hashMap);
        }
        this.f6126d = null;
        this.f6129g = null;
        WeakReference weakReference2 = this.f6123a;
        if (weakReference2 == null || (view2 = (View) weakReference2.get()) == null) {
            return;
        }
        view2.setClickable(false);
        view2.setOnClickListener(null);
        this.f6123a = null;
    }

    public final zzbhs zza() {
        return this.f6124b;
    }

    public final void zzb() {
        View view;
        if (this.f6124b == null || this.f6129g == null) {
            return;
        }
        this.f6126d = null;
        this.f6129g = null;
        WeakReference weakReference = this.f6123a;
        if (weakReference != null && (view = (View) weakReference.get()) != null) {
            view.setClickable(false);
            view.setOnClickListener(null);
            this.f6123a = null;
        }
        try {
            this.f6124b.zze();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzbjr, com.google.android.gms.internal.ads.zzdkb] */
    public final void zzc(final zzbhs zzbhsVar) {
        this.f6124b = zzbhsVar;
        zzdkb zzdkbVar = this.f6125c;
        zzdoc zzdocVar = this.f6127e;
        if (zzdkbVar != null) {
            zzdocVar.zzn("/unconfirmedClick", zzdkbVar);
        }
        ?? r0 = new zzbjr() { // from class: com.google.android.gms.internal.ads.zzdkb
            @Override // com.google.android.gms.internal.ads.zzbjr
            public final void zza(Object obj, Map map) {
                zzdkc zzdkcVar = zzdkc.this;
                try {
                    zzdkcVar.f6129g = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException unused) {
                    agd.d("Failed to call parse unconfirmedClickTimestamp.");
                }
                zzbhs zzbhsVar2 = zzbhsVar;
                zzdkcVar.f6126d = (String) map.get(TTDownloadField.TT_ID);
                String str = (String) map.get("asset_id");
                if (zzbhsVar2 == null) {
                    agd.c("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    zzbhsVar2.zzf(str);
                } catch (RemoteException e2) {
                    agd.g("#007 Could not call remote method.", e2);
                }
            }
        };
        this.f6125c = r0;
        zzdocVar.zzl("/unconfirmedClick", r0);
    }
}
