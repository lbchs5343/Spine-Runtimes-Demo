package g;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public class chy extends grq {

    /* renamed from: f, reason: collision with root package name */
    public final hcl f12908f;

    /* renamed from: g, reason: collision with root package name */
    public final Rect f12909g;
    public final Rect h;
    public final gee i;

    public chy(fts ftsVar, cbc cbcVar) {
        super(ftsVar, cbcVar);
        this.i = new gee(3, 0);
        this.h = new Rect();
        this.f12909g = new Rect();
        String str = cbcVar.w;
        cgf cgfVar = ftsVar.x;
        this.f12908f = cgfVar == null ? null : (hcl) cgfVar.f12827e.get(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0116  */
    @Override // g.grq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d(Canvas canvas, Matrix matrix, int i) {
        Bitmap bitmap;
        Rect rect = this.h;
        gee geeVar = this.i;
        Rect rect2 = this.f12909g;
        hcl hclVar = this.f12908f;
        bj(i);
        String str = this.au.w;
        fts ftsVar = this.af;
        dpa aw = ftsVar.aw();
        Bitmap bitmap2 = null;
        if (aw != null) {
            String str2 = (String) aw.f14566d;
            hcl hclVar2 = (hcl) ((Map) aw.f14565c).get(str);
            if (hclVar2 != null) {
                bitmap = hclVar2.f19221b;
                if (bitmap == null) {
                    fsj fsjVar = (fsj) aw.f14567e;
                    if (fsjVar != null) {
                        bitmap = fsjVar.dq(hclVar2);
                    } else {
                        Context context = (Context) aw.f14569g;
                        if (context != null) {
                            String str3 = hclVar2.f19222c;
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inScaled = true;
                            options.inDensity = 160;
                            if (!str3.startsWith("data:") || str3.indexOf("base64,") <= 0) {
                                try {
                                    if (TextUtils.isEmpty(str2)) {
                                        throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
                                    }
                                    try {
                                        Bitmap decodeStream = BitmapFactory.decodeStream(context.getAssets().open(str2 + str3), null, options);
                                        if (decodeStream == null) {
                                            hbp.b("Decoded image `" + str + "` is null.");
                                        } else {
                                            int i2 = hclVar2.f19224e;
                                            int i3 = hclVar2.h;
                                            cqw cqwVar = ebx.f15269c;
                                            if (decodeStream.getWidth() == i2 && decodeStream.getHeight() == i3) {
                                                bitmap = decodeStream;
                                            } else {
                                                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeStream, i2, i3, true);
                                                decodeStream.recycle();
                                                bitmap = createScaledBitmap;
                                            }
                                            dpa.i(bitmap);
                                        }
                                    } catch (IllegalArgumentException e2) {
                                        hbp.c("Unable to decode image `" + str + "`.", e2);
                                    }
                                } catch (IOException e3) {
                                    hbp.c("Unable to open asset.", e3);
                                }
                            } else {
                                try {
                                    byte[] decode = Base64.decode(str3.substring(str3.indexOf(44) + 1), 0);
                                    bitmap = BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
                                    synchronized (dpa.f14563a) {
                                    }
                                } catch (IllegalArgumentException e4) {
                                    hbp.c("data URL did not have correct base64 format.", e4);
                                }
                            }
                        }
                    }
                }
                if (bitmap == null) {
                    bitmap2 = bitmap;
                } else if (hclVar != null) {
                    bitmap2 = hclVar.f19221b;
                }
                if (bitmap2 != null || bitmap2.isRecycled() || hclVar == null) {
                    return;
                }
                float h = ebx.h();
                geeVar.setAlpha(i);
                canvas.save();
                canvas.concat(matrix);
                rect.set(0, 0, bitmap2.getWidth(), bitmap2.getHeight());
                if (ftsVar.aj) {
                    rect2.set(0, 0, (int) (hclVar.f19224e * h), (int) (hclVar.h * h));
                } else {
                    rect2.set(0, 0, (int) (bitmap2.getWidth() * h), (int) (bitmap2.getHeight() * h));
                }
                canvas.drawBitmap(bitmap2, rect, rect2, geeVar);
                canvas.restore();
                return;
            }
        }
        bitmap = null;
        if (bitmap == null) {
        }
        if (bitmap2 != null) {
        }
    }

    @Override // g.grq, g.glt
    public final void m(RectF rectF, Matrix matrix, boolean z) {
        super.m(rectF, matrix, z);
        if (this.f12908f != null) {
            float h = ebx.h();
            rectF.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, r3.f19224e * h, r3.h * h);
            this.ah.mapRect(rectF);
        }
    }
}
