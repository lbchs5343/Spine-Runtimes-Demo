package g;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class egp implements View.OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public final gcu f15503a;

    /* renamed from: b, reason: collision with root package name */
    public anp f15504b;

    public egp(View view, gcu gcuVar) {
        anp anpVar;
        this.f15503a = gcuVar;
        anp u = goi.u(view);
        if (u != null) {
            int i = Build.VERSION.SDK_INT;
            anpVar = (i >= 34 ? new bru(u) : i >= 31 ? new ghh(u) : i >= 30 ? new yd(u) : i >= 29 ? new bbb(u) : new gjd(u)).g();
        } else {
            anpVar = null;
        }
        this.f15504b = anpVar;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        int[] iArr;
        boolean z;
        if (!view.isLaidOut()) {
            this.f15504b = anp.c(view, windowInsets);
            return cuo.p(view, windowInsets);
        }
        anp c2 = anp.c(view, windowInsets);
        dif difVar = c2.f10526b;
        if (this.f15504b == null) {
            this.f15504b = goi.u(view);
        }
        if (this.f15504b == null) {
            this.f15504b = c2;
            return cuo.p(view, windowInsets);
        }
        gcu q = cuo.q(view);
        if (q != null && Objects.equals((anp) q.f17894a, c2)) {
            return cuo.p(view, windowInsets);
        }
        int[] iArr2 = new int[1];
        int[] iArr3 = new int[1];
        anp anpVar = this.f15504b;
        int i = 1;
        while (i <= 512) {
            oi i2 = difVar.i(i);
            oi i3 = anpVar.f10526b.i(i);
            int i4 = i2.f19759c;
            int i5 = i2.f19758b;
            int i6 = i2.f19761e;
            int i7 = i2.f19760d;
            int i8 = i3.f19759c;
            int i9 = i3.f19758b;
            int i10 = i3.f19761e;
            int i11 = i3.f19760d;
            if (i4 > i8 || i7 > i11 || i6 > i10 || i5 > i9) {
                iArr = iArr2;
                z = true;
            } else {
                iArr = iArr2;
                z = false;
            }
            if (z != (i4 < i8 || i7 < i11 || i6 < i10 || i5 < i9)) {
                if (z) {
                    iArr[0] = iArr[0] | i;
                } else {
                    iArr3[0] = iArr3[0] | i;
                }
            }
            i <<= 1;
            iArr2 = iArr;
        }
        int i12 = iArr2[0];
        int i13 = iArr3[0];
        int i14 = i12 | i13;
        if (i14 == 0) {
            this.f15504b = c2;
            return cuo.p(view, windowInsets);
        }
        anp anpVar2 = this.f15504b;
        cer cerVar = new cer(i14, (i12 & 8) != 0 ? cuo.j : (i13 & 8) != 0 ? cuo.k : (i12 & MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX) != 0 ? cuo.l : (i13 & MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX) != 0 ? cuo.i : null, (i14 & 8) != 0 ? 160L : 250L);
        cerVar.f12757a.e(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ValueAnimator duration = ValueAnimator.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f).setDuration(cerVar.f12757a.f());
        oi i15 = difVar.i(i14);
        oi i16 = anpVar2.f10526b.i(i14);
        int min = Math.min(i15.f19759c, i16.f19759c);
        int i17 = i15.f19760d;
        int i18 = i16.f19760d;
        int min2 = Math.min(i17, i18);
        int i19 = i15.f19761e;
        int i20 = i16.f19761e;
        int min3 = Math.min(i19, i20);
        int i21 = i15.f19758b;
        int i22 = i16.f19758b;
        akj akjVar = new akj(oi.g(min, min2, min3, Math.min(i21, i22)), 16, oi.g(Math.max(i15.f19759c, i16.f19759c), Math.max(i17, i18), Math.max(i19, i20), Math.max(i21, i22)));
        cuo.o(view, c2, false);
        duration.addUpdateListener(new bam(cerVar, c2, anpVar2, i14, view));
        duration.addListener(new gno(cerVar, view, 2));
        azx.d(view, new eax(view, cerVar, akjVar, duration));
        this.f15504b = c2;
        return cuo.p(view, windowInsets);
    }
}
