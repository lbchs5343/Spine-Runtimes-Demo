package g;

import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.os.LocaleList;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes.dex */
public final class gee extends Paint {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17980a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ gee(int i, int i2) {
        super(i);
        this.f17980a = i2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gee(PorterDuff.Mode mode) {
        super(1);
        this.f17980a = 0;
        setXfermode(new PorterDuffXfermode(mode));
    }

    private final void b(LocaleList localeList) {
    }

    @Override // android.graphics.Paint
    public void setAlpha(int i) {
        switch (this.f17980a) {
            case 0:
                if (Build.VERSION.SDK_INT >= 29) {
                    PointF pointF = din.f14231a;
                    super.setAlpha(Math.max(0, Math.min(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, i)));
                    break;
                } else {
                    int color = getColor();
                    PointF pointF2 = din.f14231a;
                    setColor((Math.max(0, Math.min(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, i)) << 24) | (color & 16777215));
                    break;
                }
            default:
                super.setAlpha(i);
                break;
        }
    }

    @Override // android.graphics.Paint
    public void setTextLocales(LocaleList localeList) {
        switch (this.f17980a) {
            case 0:
                break;
            default:
                super.setTextLocales(localeList);
                break;
        }
    }
}
