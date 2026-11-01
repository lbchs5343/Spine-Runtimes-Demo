package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import g.agd;
import g.akx;
import g.cbv;
import g.ckd;
import g.cvb;
import g.czz;
import g.dyd;
import g.edt;
import g.esy;
import g.gfb;
import g.gfc;
import g.gga;
import g.mx;
import g.ti;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdhu implements zzdjg {

    /* renamed from: ab, reason: collision with root package name */
    public final zzcxe f5999ab;
    public final zzdps ac;

    /* renamed from: b, reason: collision with root package name */
    public final zzcwk f6000b;

    /* renamed from: c, reason: collision with root package name */
    public final akx f6001c;

    /* renamed from: d, reason: collision with root package name */
    public final cvb f6002d;

    /* renamed from: f, reason: collision with root package name */
    public final zzdkc f6004f;

    /* renamed from: g, reason: collision with root package name */
    public final zzdoc f6005g;
    public final zzffo i;
    public final zzdiy j;
    public final Context k;
    public gfc m;
    public boolean n;
    public final zzavc p;
    public final zzfkl q;
    public final zzdef r;
    public final zzcny s;
    public final zzdej t;
    public final zzdjj u;
    public final zzfet v;
    public final zzflr w;
    public final zzeea y;
    public final JSONObject z;
    public boolean l = false;
    public boolean o = false;
    public boolean aa = false;

    /* renamed from: e, reason: collision with root package name */
    public Point f6003e = new Point();

    /* renamed from: a, reason: collision with root package name */
    public Point f5998a = new Point();
    public long x = 0;
    public long h = 0;

    public zzdhu(Context context, zzdjj zzdjjVar, JSONObject jSONObject, zzdoc zzdocVar, zzdiy zzdiyVar, zzavc zzavcVar, zzcxe zzcxeVar, zzcwk zzcwkVar, zzdej zzdejVar, zzfet zzfetVar, akx akxVar, zzffo zzffoVar, zzcny zzcnyVar, zzdkc zzdkcVar, cvb cvbVar, zzdef zzdefVar, zzflr zzflrVar, zzfkl zzfklVar, zzeea zzeeaVar, zzdps zzdpsVar) {
        this.k = context;
        this.u = zzdjjVar;
        this.z = jSONObject;
        this.f6005g = zzdocVar;
        this.j = zzdiyVar;
        this.p = zzavcVar;
        this.f5999ab = zzcxeVar;
        this.f6000b = zzcwkVar;
        this.t = zzdejVar;
        this.v = zzfetVar;
        this.f6001c = akxVar;
        this.i = zzffoVar;
        this.s = zzcnyVar;
        this.f6004f = zzdkcVar;
        this.f6002d = cvbVar;
        this.r = zzdefVar;
        this.w = zzflrVar;
        this.q = zzfklVar;
        this.y = zzeeaVar;
        this.ac = zzdpsVar;
    }

    public final boolean ad(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z) {
        Context context = this.k;
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.z);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdD)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z);
            JSONObject jSONObject7 = new JSONObject();
            esy esyVar = ti.f20033a.z;
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            try {
                int i = displayMetrics.widthPixels;
                cbv cbvVar = cbv.f12612a;
                jSONObject7.put(MediaFormat.KEY_WIDTH, cbvVar.f12615d.s(context, i));
                jSONObject7.put(MediaFormat.KEY_HEIGHT, cbvVar.f12615d.s(context, displayMetrics.heightPixels));
            } catch (JSONException unused) {
                jSONObject7 = null;
            }
            jSONObject6.put("screen", jSONObject7);
            boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzij)).booleanValue();
            zzdoc zzdocVar = this.f6005g;
            if (booleanValue) {
                zzdocVar.zzl("/clickRecorded", new gfb(this, 1));
            } else {
                zzdocVar.zzl("/logScionEvent", new gfb(this, 0));
            }
            zzdocVar.zzl("/nativeImpression", new gfb(this, 2));
            zzcam.zza(zzdocVar.zzg("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            if (this.l) {
                return true;
            }
            this.l = ti.f20033a.f20040g.o(context, this.f6001c.afmaVersion, this.v.zzC.toString(), this.i.zzf);
            return true;
        } catch (JSONException e2) {
            agd.f("Unable to create impression JSON.", e2);
            return false;
        }
    }

    public final void ae(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) {
        String str2;
        cvb cvbVar = this.f6002d;
        zzdjj zzdjjVar = this.u;
        JSONObject jSONObject7 = this.z;
        zzdiy zzdiyVar = this.j;
        try {
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("ad", jSONObject7);
            jSONObject8.put("asset_view_signal", jSONObject2);
            jSONObject8.put("ad_view_signal", jSONObject);
            jSONObject8.put("click_signal", jSONObject5);
            jSONObject8.put("scroll_view_signal", jSONObject3);
            jSONObject8.put("lock_screen_signal", jSONObject4);
            jSONObject8.put("has_custom_click_handler", zzdjjVar.zzc(zzdiyVar.zzA()) != null);
            jSONObject8.put("provided_signals", jSONObject6);
            JSONObject jSONObject9 = new JSONObject();
            jSONObject9.put("asset_id", str);
            jSONObject9.put("template", zzdiyVar.zzc());
            jSONObject9.put("view_aware_api_used", z);
            zzbfn zzbfnVar = this.i.zzi;
            jSONObject9.put("custom_mute_requested", zzbfnVar != null && zzbfnVar.zzg);
            jSONObject9.put("custom_mute_enabled", (zzdiyVar.zzH().isEmpty() || zzdiyVar.zzk() == null) ? false : true);
            if (this.f6004f.zza() != null && jSONObject7.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject9.put("custom_one_point_five_click_eligible", true);
            }
            ((czz) cvbVar).getClass();
            jSONObject9.put("timestamp", System.currentTimeMillis());
            if (this.aa && jSONObject7.optBoolean("allow_custom_click_gesture", false)) {
                jSONObject9.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject9.put("is_custom_click_gesture", true);
            }
            jSONObject9.put("has_custom_click_handler", zzdjjVar.zzc(zzdiyVar.zzA()) != null);
            try {
                JSONObject optJSONObject = jSONObject7.optJSONObject("tracking_urls_and_actions");
                if (optJSONObject == null) {
                    optJSONObject = new JSONObject();
                }
                str2 = this.p.zzc().zzd(this.k, optJSONObject.optString("click_string"), view);
            } catch (Exception e2) {
                agd.f("Exception obtaining click signals", e2);
                str2 = null;
            }
            jSONObject9.put("click_signals", str2);
            jSONObject9.put("open_chrome_custom_tab", true);
            zzbce zzbceVar = zzbcn.zzin;
            edt edtVar = edt.f15376a;
            if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && dyd.aq()) {
                jSONObject9.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzio)).booleanValue() && dyd.aq()) {
                jSONObject9.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject8.put("click", jSONObject9);
            JSONObject jSONObject10 = new JSONObject();
            ((czz) cvbVar).getClass();
            long currentTimeMillis = System.currentTimeMillis();
            jSONObject10.put("time_from_last_touch_down", currentTimeMillis - this.x);
            jSONObject10.put("time_from_last_touch", currentTimeMillis - this.h);
            jSONObject8.put("touch_signal", jSONObject10);
            if (this.v.zzai) {
                JSONObject jSONObject11 = (JSONObject) jSONObject7.get("tracking_urls_and_actions");
                String string = jSONObject11 != null ? jSONObject11.getString("gws_query_id") : null;
                if (string != null) {
                    this.y.zzq(string, zzdiyVar);
                }
            }
            zzcam.zza(this.f6005g.zzg("google.afma.nativeAds.handleClick", jSONObject8), "Error during performing handleClick");
        } catch (JSONException e3) {
            agd.f("Unable to create click JSON.", e3);
        }
    }

    public final String af(View view) {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdD)).booleanValue()) {
            return null;
        }
        try {
            return this.p.zzc().zzh(this.k, view, null);
        } catch (Exception unused) {
            agd.d("Exception getting data.");
            return null;
        }
    }

    public final String ag(View view, Map map) {
        if (map != null && view != null) {
            for (Map.Entry entry : map.entrySet()) {
                if (view.equals((View) ((WeakReference) entry.getValue()).get())) {
                    return (String) entry.getKey();
                }
            }
        }
        int zzc = this.j.zzc();
        if (zzc == 1) {
            return "1099";
        }
        if (zzc == 2) {
            return "2099";
        }
        if (zzc != 6) {
            return null;
        }
        return "3099";
    }

    public final boolean ah(String str) {
        JSONObject optJSONObject = this.z.optJSONObject("allow_pub_event_reporting");
        return optJSONObject != null && optJSONObject.optBoolean(str, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final boolean zzA() {
        if (zza() == 0) {
            return true;
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlh)).booleanValue()) {
            return this.i.zzi.zzj;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final boolean zzB() {
        return this.z.optBoolean("allow_custom_click_gesture", false);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0039  */
    @Override // com.google.android.gms.internal.ads.zzdjg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzC(Bundle bundle) {
        JSONObject w;
        if (!ah("impression_reporting")) {
            agd.d("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
            return false;
        }
        mx mxVar = cbv.f12612a.f12615d;
        mxVar.getClass();
        if (bundle != null) {
            try {
                w = mxVar.w(bundle);
            } catch (JSONException e2) {
                agd.f("Error converting Bundle to JSON", e2);
            }
            return ad(null, null, null, null, ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzld)).booleanValue() ? af(null) : null, w, false);
        }
        w = null;
        return ad(null, null, null, null, ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzld)).booleanValue() ? af(null) : null, w, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final int zza() {
        zzffo zzffoVar = this.i;
        if (zzffoVar.zzi == null) {
            return 0;
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlh)).booleanValue()) {
            return zzffoVar.zzi.zzi;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final JSONObject zze(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        Context context = this.k;
        JSONObject ao = ckd.ao(context, map, map2, view, scaleType);
        JSONObject y = ckd.y(context, view);
        JSONObject as = ckd.as(view);
        JSONObject az = ckd.az(context, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", ao);
            jSONObject.put("ad_view_signal", y);
            jSONObject.put("scroll_view_signal", as);
            jSONObject.put("lock_screen_signal", az);
            return jSONObject;
        } catch (JSONException e2) {
            agd.f("Unable to create native ad view signals JSON.", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final JSONObject zzf(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        JSONObject zze = zze(view, map, map2, scaleType);
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.aa && this.z.optBoolean("allow_custom_click_gesture", false)) {
                jSONObject.put("custom_click_gesture_eligible", true);
            }
            if (zze != null) {
                jSONObject.put("nas", zze);
            }
            return jSONObject;
        } catch (JSONException e2) {
            agd.f("Unable to create native click meta data JSON.", e2);
            return jSONObject;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzg() {
        try {
            gfc gfcVar = this.m;
            if (gfcVar != null) {
                gfcVar.zze();
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzh() {
        if (this.z.optBoolean("custom_one_point_five_click_enabled", false)) {
            this.f6004f.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzi() {
        this.f6005g.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzj(gga ggaVar) {
        try {
            if (this.o) {
                return;
            }
            zzfkl zzfklVar = this.q;
            zzflr zzflrVar = this.w;
            if (ggaVar == null) {
                zzdiy zzdiyVar = this.j;
                if (zzdiyVar.zzk() != null) {
                    this.o = true;
                    zzflrVar.zzc(zzdiyVar.zzk().f18572b, zzfklVar);
                    zzg();
                    return;
                }
            }
            this.o = true;
            zzflrVar.zzc(ggaVar.zzf(), zzfklVar);
            zzg();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzk(View view, View view2, Map map, Map map2, boolean z, ImageView.ScaleType scaleType) {
        Context context = this.k;
        JSONObject ao = ckd.ao(context, map, map2, view2, scaleType);
        JSONObject y = ckd.y(context, view2);
        JSONObject as = ckd.as(view2);
        JSONObject az = ckd.az(context, view2);
        String ag = ag(view, map);
        ae(true == ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdK)).booleanValue() ? view2 : view, y, ao, as, az, ag, ckd.ap(ag, context, this.f5998a, this.f6003e), null, z, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzl(String str) {
        ae(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzm(Bundle bundle) {
        if (bundle == null) {
            agd.c("Click data is null. No click is reported.");
            return;
        }
        if (!ah("click_reporting")) {
            agd.d("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
            return;
        }
        Bundle bundle2 = bundle.getBundle("click_signal");
        JSONObject jSONObject = null;
        String string = bundle2 != null ? bundle2.getString("asset_id") : null;
        mx mxVar = cbv.f12612a.f12615d;
        mxVar.getClass();
        try {
            jSONObject = mxVar.w(bundle);
        } catch (JSONException e2) {
            agd.f("Error converting Bundle to JSON", e2);
        }
        ae(null, null, null, null, null, string, null, jSONObject, false, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0028  */
    @Override // com.google.android.gms.internal.ads.zzdjg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzo(View view, View view2, Map map, Map map2, boolean z, ImageView.ScaleType scaleType, int i) {
        boolean z2;
        boolean z3;
        JSONObject jSONObject;
        JSONObject jSONObject2 = this.z;
        if (jSONObject2.optBoolean("allow_sdk_custom_click_gesture", false)) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlh)).booleanValue()) {
                z2 = true;
                if (!z2) {
                    if (!this.aa) {
                        agd.c("Custom click reporting failed. enableCustomClickGesture is not set.");
                        return;
                    } else if (!jSONObject2.optBoolean("allow_custom_click_gesture", false)) {
                        agd.c("Custom click reporting failed. Ad unit id not in the allow list.");
                        return;
                    }
                }
                Context context = this.k;
                JSONObject ao = ckd.ao(context, map, map2, view2, scaleType);
                JSONObject y = ckd.y(context, view2);
                JSONObject as = ckd.as(view2);
                z3 = z2;
                JSONObject az = ckd.az(context, view2);
                String ag = ag(view, map);
                JSONObject ap = ckd.ap(ag, context, this.f5998a, this.f6003e);
                if (z3) {
                    try {
                        Point point = this.f5998a;
                        Point point2 = this.f6003e;
                        try {
                            jSONObject = new JSONObject();
                            try {
                                JSONObject jSONObject3 = new JSONObject();
                                JSONObject jSONObject4 = new JSONObject();
                                if (point != null) {
                                    jSONObject3.put("x", point.x);
                                    jSONObject3.put("y", point.y);
                                }
                                if (point2 != null) {
                                    jSONObject4.put("x", point2.x);
                                    jSONObject4.put("y", point2.y);
                                }
                                jSONObject.put("start_point", jSONObject3);
                                jSONObject.put("end_point", jSONObject4);
                                jSONObject.put("duration_ms", i);
                            } catch (Exception e2) {
                                e = e2;
                                agd.f("Error occurred while grabbing custom click gesture signals.", e);
                                jSONObject2.put("custom_click_gesture_signal", jSONObject);
                                ae(view2, y, ao, as, az, ag, ap, null, z, true);
                            }
                        } catch (Exception e3) {
                            e = e3;
                            jSONObject = null;
                        }
                        jSONObject2.put("custom_click_gesture_signal", jSONObject);
                    } catch (JSONException e4) {
                        agd.f("Error occurred while adding CustomClickGestureSignals to adJson.", e4);
                        ti.f20033a.f20034ab.zzw(e4, "FirstPartyNativeAdCore.performCustomClickGesture");
                    }
                }
                ae(view2, y, ao, as, az, ag, ap, null, z, true);
            }
        }
        z2 = false;
        if (!z2) {
        }
        Context context2 = this.k;
        JSONObject ao2 = ckd.ao(context2, map, map2, view2, scaleType);
        JSONObject y2 = ckd.y(context2, view2);
        JSONObject as2 = ckd.as(view2);
        z3 = z2;
        JSONObject az2 = ckd.az(context2, view2);
        String ag2 = ag(view, map);
        JSONObject ap2 = ckd.ap(ag2, context2, this.f5998a, this.f6003e);
        if (z3) {
        }
        ae(view2, y2, ao2, as2, az2, ag2, ap2, null, z, true);
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzp() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.z);
            zzcam.zza(this.f6005g.zzg("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e2) {
            agd.f("", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzq(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        Context context = this.k;
        ad(ckd.y(context, view), ckd.ao(context, map, map2, view, scaleType), ckd.as(view), ckd.az(context, view), af(view), null, ckd.ah(context, this.v));
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzr() {
        ad(null, null, null, null, null, null, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzs(View view, MotionEvent motionEvent, View view2) {
        int[] iArr = new int[2];
        if (view2 != null) {
            view2.getLocationOnScreen(iArr);
        }
        this.f6003e = new Point(((int) motionEvent.getRawX()) - iArr[0], ((int) motionEvent.getRawY()) - iArr[1]);
        ((czz) this.f6002d).getClass();
        long currentTimeMillis = System.currentTimeMillis();
        this.h = currentTimeMillis;
        if (motionEvent.getAction() == 0) {
            this.ac.zzb(motionEvent);
            this.x = currentTimeMillis;
            this.f5998a = this.f6003e;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.f6003e;
        obtain.setLocation(point.x, point.y);
        this.p.zzd(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzt(Bundle bundle) {
        if (bundle == null) {
            agd.c("Touch event data is null. No touch event is reported.");
            return;
        }
        if (!ah("touch_reporting")) {
            agd.d("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
            return;
        }
        this.p.zzc().zzl((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt("duration_ms"));
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzu(View view) {
        if (!this.z.optBoolean("custom_one_point_five_click_enabled", false)) {
            agd.b("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
        } else {
            if (view == null) {
                return;
            }
            zzdkc zzdkcVar = this.f6004f;
            view.setOnClickListener(zzdkcVar);
            view.setClickable(true);
            zzdkcVar.f6123a = new WeakReference(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzv() {
        this.aa = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzw(gfc gfcVar) {
        this.m = gfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzx(zzbhs zzbhsVar) {
        if (this.z.optBoolean("custom_one_point_five_click_enabled", false)) {
            this.f6004f.zzc(zzbhsVar);
        } else {
            agd.b("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzy(View view, Map map, Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.f6003e = new Point();
        this.f5998a = new Point();
        if (!this.n) {
            this.r.zza(view);
            this.n = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.s.zzi(this);
        boolean ae = ckd.ae(this.f6001c.clientJarVersion);
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                View view2 = (View) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                if (view2 != null) {
                    if (ae) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            Iterator it2 = map2.entrySet().iterator();
            while (it2.hasNext()) {
                View view3 = (View) ((WeakReference) ((Map.Entry) it2.next()).getValue()).get();
                if (view3 != null) {
                    if (ae) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjg
    public final void zzz(View view, Map map) {
        this.f6003e = new Point();
        this.f5998a = new Point();
        if (view != null) {
            this.r.zzb(view);
        }
        this.n = false;
    }
}
