package g;

import android.app.Activity;
import android.graphics.Rect;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbzz;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class dsu extends ajw {
    @Override // g.feo
    public final int g(AudioManager audioManager) {
        int streamMinVolume;
        streamMinVolume = audioManager.getStreamMinVolume(3);
        return streamMinVolume;
    }

    @Override // g.feo
    public final void h(final Activity activity) {
        boolean isInMultiWindowMode;
        int i;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbm)).booleanValue() && ((cmo) ti.f20033a.f20034ab.zzi()).bd() == null) {
            isInMultiWindowMode = activity.isInMultiWindowMode();
            if (isInMultiWindowMode) {
                return;
            }
            Window window = activity.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            i = attributes.layoutInDisplayCutoutMode;
            if (1 != i) {
                attributes.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes);
            }
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: g.btf
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    int i2;
                    DisplayCutout displayCutout;
                    List<Rect> boundingRects;
                    zzbzz zzbzzVar = ti.f20033a.f20034ab;
                    if (((cmo) zzbzzVar.zzi()).bd() == null) {
                        displayCutout = windowInsets.getDisplayCutout();
                        String str = "";
                        if (displayCutout != null) {
                            gil zzi = zzbzzVar.zzi();
                            boundingRects = displayCutout.getBoundingRects();
                            for (Rect rect : boundingRects) {
                                Locale locale = Locale.US;
                                String str2 = rect.left + "," + rect.top + "," + rect.right + "," + rect.bottom;
                                if (!TextUtils.isEmpty(str)) {
                                    str = str.concat("|");
                                }
                                str = str.concat(str2);
                            }
                            ((cmo) zzi).ar(str);
                        } else {
                            ((cmo) zzbzzVar.zzi()).ar("");
                        }
                    }
                    Window window2 = activity.getWindow();
                    WindowManager.LayoutParams attributes2 = window2.getAttributes();
                    i2 = attributes2.layoutInDisplayCutoutMode;
                    if (2 != i2) {
                        attributes2.layoutInDisplayCutoutMode = 2;
                        window2.setAttributes(attributes2);
                    }
                    return view.onApplyWindowInsets(windowInsets);
                }
            });
        }
    }
}
