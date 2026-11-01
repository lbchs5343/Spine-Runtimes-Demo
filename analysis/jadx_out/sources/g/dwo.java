package g;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public class dwo extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public Rect f14950a;

    /* renamed from: b, reason: collision with root package name */
    public float f14951b;

    /* renamed from: c, reason: collision with root package name */
    public int f14952c;

    /* renamed from: d, reason: collision with root package name */
    public float f14953d;

    /* renamed from: e, reason: collision with root package name */
    public ColorStateList f14954e;

    /* renamed from: f, reason: collision with root package name */
    public int f14955f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f14956g;
    public cjg h;
    public ColorStateList i;
    public int j;
    public float k;
    public final float l;
    public dsx m;
    public float n;
    public final Paint.Style o;
    public gid p;
    public PorterDuff.Mode q;

    public dwo(cjg cjgVar) {
        this.f14954e = null;
        this.f14956g = null;
        this.i = null;
        this.q = PorterDuff.Mode.SRC_IN;
        this.f14950a = null;
        this.l = 1.0f;
        this.n = 1.0f;
        this.f14955f = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        this.k = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f14953d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f14952c = 0;
        this.j = 0;
        this.o = Paint.Style.FILL_AND_STROKE;
        this.h = cjgVar;
        this.p = null;
    }

    public dwo(dwo dwoVar) {
        this.f14954e = null;
        this.f14956g = null;
        this.i = null;
        this.q = PorterDuff.Mode.SRC_IN;
        this.f14950a = null;
        this.l = 1.0f;
        this.n = 1.0f;
        this.f14955f = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        this.k = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f14953d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f14952c = 0;
        this.j = 0;
        this.o = Paint.Style.FILL_AND_STROKE;
        this.h = dwoVar.h;
        this.m = dwoVar.m;
        this.p = dwoVar.p;
        this.f14951b = dwoVar.f14951b;
        this.f14954e = dwoVar.f14954e;
        this.f14956g = dwoVar.f14956g;
        this.q = dwoVar.q;
        this.i = dwoVar.i;
        this.f14955f = dwoVar.f14955f;
        this.l = dwoVar.l;
        this.j = dwoVar.j;
        this.n = dwoVar.n;
        this.k = dwoVar.k;
        this.f14953d = dwoVar.f14953d;
        this.f14952c = dwoVar.f14952c;
        this.o = dwoVar.o;
        if (dwoVar.f14950a != null) {
            this.f14950a = new Rect(dwoVar.f14950a);
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        ddm ddmVar = new ddm(this);
        ddmVar.dy = true;
        ddmVar.cy = true;
        return ddmVar;
    }
}
