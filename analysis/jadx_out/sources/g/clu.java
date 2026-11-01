package g;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public final class clu extends BitmapDrawable {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f13092a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f13093b;

    /* renamed from: c, reason: collision with root package name */
    public Drawable f13094c;

    /* renamed from: d, reason: collision with root package name */
    public final long f13095d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f13096e;

    static {
        new Paint();
    }

    public clu(Context context, Bitmap bitmap, Drawable drawable, gye gyeVar) {
        super(context.getResources(), bitmap);
        this.f13093b = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        float f2 = context.getResources().getDisplayMetrics().density;
        if (gyeVar != gye.MEMORY) {
            this.f13094c = drawable;
            this.f13096e = true;
            this.f13095d = SystemClock.uptimeMillis();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (!this.f13096e) {
            super.draw(canvas);
            return;
        }
        float uptimeMillis = (SystemClock.uptimeMillis() - this.f13095d) / 200.0f;
        if (uptimeMillis >= 1.0f) {
            this.f13096e = false;
            this.f13094c = null;
            super.draw(canvas);
        } else {
            Drawable drawable = this.f13094c;
            if (drawable != null) {
                drawable.draw(canvas);
            }
            super.setAlpha((int) (this.f13093b * uptimeMillis));
            super.draw(canvas);
            super.setAlpha(this.f13093b);
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f13094c;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f13093b = i;
        Drawable drawable = this.f13094c;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
        super.setAlpha(i);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f13094c;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }
}
