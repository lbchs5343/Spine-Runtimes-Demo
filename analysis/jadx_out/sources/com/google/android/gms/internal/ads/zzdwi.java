package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TableRow;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.ads.nativead.NativeAd;
import g.aia;
import g.cn;
import g.dii;
import g.ti;

/* loaded from: classes3.dex */
public final class zzdwi {
    public static TextView a(Context context, String str, int i, int i2, float f2, String str2) {
        TextView textView = new TextView(context);
        textView.setTag(str2);
        b(textView, -2, -2);
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new TableRow.LayoutParams();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(layoutParams);
        marginLayoutParams.bottomMargin = (int) TypedValue.applyDimension(1, f2, textView.getResources().getDisplayMetrics());
        textView.setLayoutParams(marginLayoutParams);
        textView.setTextAppearance(context, i);
        textView.setTextColor(i2);
        textView.setText(str);
        return textView;
    }

    public static void b(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new TableRow.LayoutParams();
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams);
        layoutParams2.height = i;
        layoutParams2.width = i2;
        view.setLayoutParams(layoutParams2);
    }

    public static final void zza(Context context, ViewGroup viewGroup, aia aiaVar) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setTag("layout");
        b(linearLayout, -1, -1);
        linearLayout.setGravity(17);
        linearLayout.addView(aiaVar);
        aiaVar.setTag("ad_view");
        viewGroup.addView(linearLayout);
    }

    public static final void zzb(Context context, ViewGroup viewGroup, NativeAd nativeAd) {
        dii diiVar = new dii(context);
        diiVar.setTag("ad_view_tag");
        b(diiVar, -1, -1);
        viewGroup.addView(diiVar);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setTag("layout_tag");
        linearLayout.setOrientation(1);
        b(linearLayout, -1, -1);
        linearLayout.setBackgroundColor(-1);
        diiVar.addView(linearLayout);
        Resources zze = ti.f20033a.f20034ab.zze();
        linearLayout.addView(a(context, zze == null ? "Headline" : zze.getString(R.string.native_headline), android.R.style.TextAppearance.Small, -9210245, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, "headline_header_tag"));
        View a2 = a(context, zzfxf.zzc(nativeAd.getHeadline()), android.R.style.TextAppearance.Medium, -16777216, 12.0f, "headline_tag");
        diiVar.setHeadlineView(a2);
        linearLayout.addView(a2);
        linearLayout.addView(a(context, zze == null ? "Body" : zze.getString(R.string.native_body), android.R.style.TextAppearance.Small, -9210245, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, "body_header_tag"));
        View a3 = a(context, zzfxf.zzc(nativeAd.getBody()), android.R.style.TextAppearance.Medium, -16777216, 12.0f, "body_tag");
        diiVar.setBodyView(a3);
        linearLayout.addView(a3);
        linearLayout.addView(a(context, zze == null ? "Media View" : zze.getString(R.string.native_media_view), android.R.style.TextAppearance.Small, -9210245, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, "media_view_header_tag"));
        cn cnVar = new cn(context);
        cnVar.setTag("media_view_tag");
        diiVar.setMediaView(cnVar);
        linearLayout.addView(cnVar);
        diiVar.setNativeAd(nativeAd);
    }
}
