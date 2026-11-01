package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import g.cbv;
import g.mx;
import g.ti;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcrc extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5558a;

    /* renamed from: b, reason: collision with root package name */
    public View f5559b;

    public zzcrc(Context context) {
        super(context);
        this.f5558a = context;
    }

    public static zzcrc zza(Context context, View view, zzfet zzfetVar) {
        Resources resources;
        DisplayMetrics displayMetrics;
        zzcrc zzcrcVar = new zzcrc(context);
        boolean isEmpty = zzfetVar.zzu.isEmpty();
        Context context2 = zzcrcVar.f5558a;
        if (!isEmpty && (resources = context2.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            float f2 = ((zzfeu) zzfetVar.zzu.get(0)).zza;
            float f3 = displayMetrics.density;
            zzcrcVar.setLayoutParams(new FrameLayout.LayoutParams((int) (f2 * f3), (int) (r2.zzb * f3)));
        }
        zzcrcVar.f5559b = view;
        zzcrcVar.addView(view);
        zzcaw zzcawVar = ti.f20033a.i;
        zzcaw.zzb(zzcrcVar, zzcrcVar);
        zzcaw.zza(zzcrcVar, zzcrcVar);
        JSONObject jSONObject = zzfetVar.zzah;
        RelativeLayout relativeLayout = new RelativeLayout(context2);
        JSONObject optJSONObject = jSONObject.optJSONObject("header");
        if (optJSONObject != null) {
            zzcrcVar.c(optJSONObject, relativeLayout, 10);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
        if (optJSONObject2 != null) {
            zzcrcVar.c(optJSONObject2, relativeLayout, 12);
        }
        zzcrcVar.addView(relativeLayout);
        return zzcrcVar;
    }

    public final void c(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        Context context = this.f5558a;
        TextView textView = new TextView(context);
        textView.setTextColor(-1);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        double optDouble = jSONObject.optDouble("padding", 0.0d);
        cbv cbvVar = cbv.f12612a;
        mx mxVar = cbvVar.f12615d;
        int k = mx.k(context, (int) optDouble);
        textView.setPadding(0, k, 0, k);
        double optDouble2 = jSONObject.optDouble(MediaFormat.KEY_HEIGHT, 15.0d);
        mx mxVar2 = cbvVar.f12615d;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, mx.k(context, (int) optDouble2));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        getLocationInWindow(new int[2]);
        this.f5559b.setY(-r0[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        getLocationInWindow(new int[2]);
        this.f5559b.setY(-r0[1]);
    }
}
