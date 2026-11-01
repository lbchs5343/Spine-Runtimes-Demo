package g;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.IOException;

/* loaded from: classes.dex */
public final class agw extends biz {
    @Override // g.biz
    public final Bitmap a(Canvas canvas, Paint paint, int i, Bitmap bitmap, dcq dcqVar) {
        Bitmap decodeStream;
        dan danVar = this.f11682e;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inSampleSize = i;
        options.inMutable = true;
        options.inBitmap = bitmap;
        Bitmap bitmap2 = null;
        try {
            ((dbj) danVar).af();
            try {
                decodeStream = BitmapFactory.decodeStream(((dbj) danVar).ac(), null, options);
            } catch (IllegalArgumentException unused) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inJustDecodeBounds = false;
                options2.inSampleSize = i;
                options2.inMutable = true;
                decodeStream = BitmapFactory.decodeStream(((dbj) danVar).ac(), null, options2);
            }
            try {
                paint.setXfermode(null);
                canvas.drawBitmap(decodeStream, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, paint);
                return decodeStream;
            } catch (IOException e2) {
                e = e2;
                bitmap2 = decodeStream;
                e.printStackTrace();
                return bitmap2;
            }
        } catch (IOException e3) {
            e = e3;
        }
    }
}
