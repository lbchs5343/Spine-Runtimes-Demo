package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import g.agd;
import g.cbv;
import g.edt;
import g.esy;
import g.mx;
import g.ti;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbsj extends zzbsk implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public float f4966a;

    /* renamed from: b, reason: collision with root package name */
    public int f4967b;

    /* renamed from: c, reason: collision with root package name */
    public int f4968c;

    /* renamed from: d, reason: collision with root package name */
    public int f4969d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f4970e;

    /* renamed from: f, reason: collision with root package name */
    public int f4971f;

    /* renamed from: g, reason: collision with root package name */
    public final WindowManager f4972g;
    public final zzbbv h;
    public int i;
    public int j;
    public int k;
    public final zzcfk l;
    public DisplayMetrics m;

    public zzbsj(zzcfk zzcfkVar, Context context, zzbbv zzbbvVar) {
        super(zzcfkVar, "");
        this.j = -1;
        this.k = -1;
        this.f4971f = -1;
        this.i = -1;
        this.f4969d = -1;
        this.f4968c = -1;
        this.l = zzcfkVar;
        this.f4970e = context;
        this.h = zzbbvVar;
        this.f4972g = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        JSONObject jSONObject;
        this.m = new DisplayMetrics();
        Display defaultDisplay = this.f4972g.getDefaultDisplay();
        defaultDisplay.getMetrics(this.m);
        this.f4966a = this.m.density;
        this.f4967b = defaultDisplay.getRotation();
        mx mxVar = cbv.f12612a.f12615d;
        this.j = Math.round(r11.widthPixels / this.m.density);
        this.k = Math.round(r11.heightPixels / this.m.density);
        zzcfk zzcfkVar = this.l;
        Activity zzi = zzcfkVar.zzi();
        if (zzi == null || zzi.getWindow() == null) {
            this.f4971f = this.j;
            this.i = this.k;
        } else {
            esy esyVar = ti.f20033a.z;
            int[] ae = esy.ae(zzi);
            this.f4971f = Math.round(ae[0] / this.m.density);
            this.i = Math.round(ae[1] / this.m.density);
        }
        if (zzcfkVar.zzO().zzi()) {
            this.f4969d = this.j;
            this.f4968c = this.k;
        } else {
            zzcfkVar.measure(0, 0);
        }
        zzj(this.j, this.k, this.f4971f, this.i, this.f4966a, this.f4967b);
        zzbsi zzbsiVar = new zzbsi();
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        zzbbv zzbbvVar = this.h;
        zzbsiVar.zze(zzbbvVar.zza(intent));
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        zzbsiVar.zzc(zzbbvVar.zza(intent2));
        zzbsiVar.zza(zzbbvVar.zzb());
        zzbsiVar.zzd(zzbbvVar.zzc());
        zzbsiVar.zzb(true);
        boolean z = zzbsiVar.f4963c;
        boolean z2 = zzbsiVar.f4964d;
        boolean z3 = zzbsiVar.f4965e;
        try {
            jSONObject = new JSONObject().put("sms", z).put("tel", z2).put("calendar", z3).put("storePicture", zzbsiVar.f4961a).put("inlineVideo", zzbsiVar.f4962b);
        } catch (JSONException e2) {
            agd.f("Error occurred while obtaining the MRAID capabilities.", e2);
            jSONObject = null;
        }
        zzcfkVar.zze("onDeviceFeaturesReceived", jSONObject);
        int[] iArr = new int[2];
        zzcfkVar.getLocationOnScreen(iArr);
        cbv cbvVar = cbv.f12612a;
        mx mxVar2 = cbvVar.f12615d;
        int i = iArr[0];
        Context context = this.f4970e;
        zzb(mxVar2.s(context, i), cbvVar.f12615d.s(context, iArr[1]));
        if (agd.i(2)) {
            agd.k("Dispatching Ready Event.");
        }
        zzi(zzcfkVar.zzn().afmaVersion);
    }

    public final void zzb(int i, int i2) {
        int i3;
        Context context = this.f4970e;
        int i4 = 0;
        if (context instanceof Activity) {
            esy esyVar = ti.f20033a.z;
            i3 = esy.r((Activity) context)[0];
        } else {
            i3 = 0;
        }
        zzcfk zzcfkVar = this.l;
        if (zzcfkVar.zzO() == null || !zzcfkVar.zzO().zzi()) {
            int width = zzcfkVar.getWidth();
            int height = zzcfkVar.getHeight();
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzaa)).booleanValue()) {
                if (width == 0) {
                    width = zzcfkVar.zzO() != null ? zzcfkVar.zzO().zzb : 0;
                }
                if (height == 0) {
                    if (zzcfkVar.zzO() != null) {
                        i4 = zzcfkVar.zzO().zza;
                    }
                    cbv cbvVar = cbv.f12612a;
                    this.f4969d = cbvVar.f12615d.s(context, width);
                    this.f4968c = cbvVar.f12615d.s(context, i4);
                }
            }
            i4 = height;
            cbv cbvVar2 = cbv.f12612a;
            this.f4969d = cbvVar2.f12615d.s(context, width);
            this.f4968c = cbvVar2.f12615d.s(context, i4);
        }
        zzg(i, i2 - i3, this.f4969d, this.f4968c);
        zzcfkVar.zzN().zzC(i, i2);
    }
}
