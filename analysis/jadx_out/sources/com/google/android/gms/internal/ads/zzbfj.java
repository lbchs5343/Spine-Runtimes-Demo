package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import g.agd;
import g.bpp;
import g.cbv;
import g.ckd;
import g.mx;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbfj extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public static final float[] f4801a = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};

    /* renamed from: b, reason: collision with root package name */
    public final AnimationDrawable f4802b;

    public zzbfj(Context context, zzbfi zzbfiVar, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        ckd.k(zzbfiVar);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(f4801a, null, null));
        shapeDrawable.getPaint().setColor(zzbfiVar.zzd());
        setLayoutParams(layoutParams);
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(zzbfiVar.zzg())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(zzbfiVar.zzg());
            textView.setTextColor(zzbfiVar.zze());
            textView.setTextSize(zzbfiVar.zzf());
            mx mxVar = cbv.f12612a.f12615d;
            textView.setPadding(mx.k(context, 4), 0, mx.i(context.getResources().getDisplayMetrics(), 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List zzi = zzbfiVar.zzi();
        if (zzi != null && zzi.size() > 1) {
            this.f4802b = new AnimationDrawable();
            Iterator it = zzi.iterator();
            while (it.hasNext()) {
                try {
                    this.f4802b.addFrame((Drawable) bpp.b(((zzbfl) it.next()).zzf()), zzbfiVar.zzb());
                } catch (Exception e2) {
                    agd.f("Error while getting drawable.", e2);
                }
            }
            imageView.setBackground(this.f4802b);
        } else if (zzi.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) bpp.b(((zzbfl) zzi.get(0)).zzf()));
            } catch (Exception e3) {
                agd.f("Error while getting drawable.", e3);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.f4802b;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
