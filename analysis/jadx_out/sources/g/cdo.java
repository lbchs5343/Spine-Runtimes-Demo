package g;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.media.ImageReader;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public abstract class cdo extends guy {
    public static final int i = fyt.f17668a.getAndIncrement();
    public MediaProjectionManager j;

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == i) {
            if (i3 != -1) {
                onDenied("cn.trinea.action.MANAGE_MEDIA_PROJECTION");
                return;
            }
            d.b.a aVar = (d.b.a) this;
            aVar.h("cn.trinea.action.MANAGE_MEDIA_PROJECTION");
            fdp fdpVar = aVar.f9824d;
            if (!fdpVar.n) {
                synchronized (fdp.class) {
                    fdpVar.n = true;
                }
                Resources resources = fdpVar.getResources();
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.colorPickerPanelWidth);
                int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.colorPickerPanelHeight);
                int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.colorPickerStrawCircleRadius);
                DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                int i4 = displayMetrics.widthPixels / 2;
                int i5 = displayMetrics.heightPixels / 2;
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(dimensionPixelSize3, dimensionPixelSize3, fso.ah(), -2147483384, -3);
                fdpVar.r = layoutParams;
                layoutParams.gravity = 51;
                int i6 = dimensionPixelSize3 / 2;
                layoutParams.x = i4 - i6;
                layoutParams.y = i5 - i6;
                gft gftVar = new gft(fdpVar.q);
                gftVar.j();
                fdpVar.f16617b = gftVar;
                gftVar.setOnTouchListener(new flh(fdpVar, 0));
                fdpVar.s.addView(fdpVar.f16617b, fdpVar.r);
                WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(dimensionPixelSize, dimensionPixelSize2, fso.ah(), -2147483384, -3);
                fdpVar.f16620e = layoutParams2;
                layoutParams2.gravity = 51;
                layoutParams2.x = i4 - (dimensionPixelSize / 2);
                layoutParams2.y = (fdpVar.r.y - dimensionPixelSize2) - ((int) fso.al(fdpVar.q, 16.0f));
                fdpVar.k = fdpVar.getResources().getInteger(R.integer.strawCenterWidth);
                fdpVar.j = fdpVar.getResources().getInteger(R.integer.strawCenterHeight);
                int i7 = fdpVar.k / 2;
                int i8 = fdpVar.j / 2;
                fdpVar.h = new Rect(i4 - i7, i5 - i8, i7 + i4 + 1, i8 + i5 + 1);
                fdpVar.f16621f = ((dimensionPixelSize3 * 2) + Math.min(dimensionPixelSize, dimensionPixelSize2)) / 2.0f;
                fdpVar.p = new PointF();
                fdpVar.m = new PointF();
                fdpVar.w = displayMetrics.density * 25.0f;
                ContextThemeWrapper ac = fdpVar.ac();
                fdpVar.x = ac;
                n nVar = (n) LayoutInflater.from(ac).inflate(R.layout.window_color_picker, (ViewGroup) null);
                fdpVar.o = nVar;
                nVar.setOnTouchListener(new flh(fdpVar, 1));
                fdpVar.o.setCloseOnClickListener(fdpVar);
                fdpVar.o.setInfoOnClickListener(fdpVar);
                if (!fdpVar.o.isAttachedToWindow()) {
                    fdpVar.s.addView(fdpVar.o, fdpVar.f16620e);
                }
            }
            fdp fdpVar2 = aVar.f9824d;
            if (fdp.f16616a != null) {
                fdpVar2.aa();
            }
            MediaProjection mediaProjection = ((MediaProjectionManager) fdpVar2.getSystemService("media_projection")).getMediaProjection(i3, intent);
            fdpVar2.f16622g = mediaProjection;
            if (mediaProjection == null) {
                erl.y("MediaProjection is null");
                gm.c(fdpVar2.q, R.string.dab_exception);
                return;
            }
            DisplayMetrics displayMetrics2 = fdpVar2.getResources().getDisplayMetrics();
            Point point = new Point();
            fdpVar2.s.getDefaultDisplay().getRealSize(point);
            ImageReader newInstance = ImageReader.newInstance(point.x, point.y, 1, 1);
            fdpVar2.v = newInstance;
            newInstance.setOnImageAvailableListener(new exx(fdpVar2), new Handler());
            MediaProjection mediaProjection2 = fdpVar2.f16622g;
            bpl bplVar = new bpl();
            fdpVar2.f16618c = bplVar;
            mediaProjection2.registerCallback(bplVar, new Handler());
            fdp.f16616a = fdpVar2.f16622g.createVirtualDisplay("DevToolsScreenCapture", point.x, point.y, displayMetrics2.densityDpi, 16, fdpVar2.v.getSurface(), null, null);
        }
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.j = (MediaProjectionManager) getSystemService("media_projection");
    }
}
