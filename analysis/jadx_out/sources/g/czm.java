package g;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;

/* loaded from: classes3.dex */
public final class czm extends FrameLayout implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final ImageButton f13813a;

    /* renamed from: b, reason: collision with root package name */
    public final cwg f13814b;

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0060, code lost:
    
        r0 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public czm(Context context, bwg bwgVar, cwg cwgVar) {
        super(context);
        Drawable drawable;
        this.f13814b = cwgVar;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.f13813a = imageButton;
        String str = (String) edt.f15376a.f15379d.zza(zzbcn.zzbi);
        if (TextUtils.isEmpty(str) || "default".equals(str)) {
            imageButton.setImageResource(R.drawable.btn_dialog);
        } else {
            Resources zze = ti.f20033a.f20034ab.zze();
            if (zze != null) {
                try {
                } catch (Resources.NotFoundException unused) {
                    agd.c("Close button resource not found, falling back to default.");
                    drawable = null;
                }
                if ("white".equals(str)) {
                    drawable = zze.getDrawable(cn.trinea.android.developertools.R.drawable.admob_close_button_white_circle_black_cross);
                } else {
                    if ("black".equals(str)) {
                        drawable = zze.getDrawable(cn.trinea.android.developertools.R.drawable.admob_close_button_black_circle_white_cross);
                    }
                    drawable = null;
                }
                if (drawable == null) {
                    imageButton.setImageResource(R.drawable.btn_dialog);
                } else {
                    imageButton.setImageDrawable(drawable);
                    imageButton.setScaleType(ImageView.ScaleType.CENTER);
                }
            } else {
                imageButton.setImageResource(R.drawable.btn_dialog);
            }
        }
        this.f13813a.setBackgroundColor(0);
        this.f13813a.setOnClickListener(this);
        ImageButton imageButton2 = this.f13813a;
        mx mxVar = cbv.f12612a.f12615d;
        imageButton2.setPadding(mx.k(context, bwgVar.f12310b), mx.i(context.getResources().getDisplayMetrics(), 0), mx.i(context.getResources().getDisplayMetrics(), bwgVar.f12311c), mx.i(context.getResources().getDisplayMetrics(), bwgVar.f12312d));
        this.f13813a.setContentDescription("Interstitial close button");
        addView(this.f13813a, new FrameLayout.LayoutParams(mx.i(context.getResources().getDisplayMetrics(), bwgVar.f12309a + bwgVar.f12310b + bwgVar.f12311c), mx.i(context.getResources().getDisplayMetrics(), bwgVar.f12309a + bwgVar.f12312d), 17));
        zzbce zzbceVar = zzbcn.zzbj;
        edt edtVar = edt.f15376a;
        long longValue = ((Long) edtVar.f15379d.zza(zzbceVar)).longValue();
        if (longValue <= 0) {
            return;
        }
        cod codVar = ((Boolean) edtVar.f15379d.zza(zzbcn.zzbk)).booleanValue() ? new cod(7, this) : null;
        this.f13813a.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.f13813a.animate().alpha(1.0f).setDuration(longValue).setListener(codVar);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        cwg cwgVar = this.f13814b;
        if (cwgVar != null) {
            cwgVar.f13627g = 2;
            cwgVar.s.finish();
        }
    }
}
