package g;

import android.graphics.Bitmap;
import android.graphics.PointF;
import android.media.Image;
import android.media.ImageReader;
import android.util.Pair;

/* loaded from: classes.dex */
public final class exx implements ImageReader.OnImageAvailableListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fdp f16345a;

    public exx(fdp fdpVar) {
        this.f16345a = fdpVar;
    }

    @Override // android.media.ImageReader.OnImageAvailableListener
    public final void onImageAvailable(ImageReader imageReader) {
        synchronized (this.f16345a.u) {
            try {
                Image acquireNextImage = imageReader.acquireNextImage();
                if (acquireNextImage != null) {
                    fdp fdpVar = this.f16345a;
                    if (fdpVar.o != null) {
                        Pair y = fdp.y(acquireNextImage, fdpVar.h);
                        n nVar = this.f16345a.o;
                        int intValue = ((Integer) y.second).intValue();
                        nVar.f19692c = intValue;
                        nVar.f19694e.setColor(intValue);
                        fdp fdpVar2 = this.f16345a;
                        fdpVar2.l = fdpVar2.o.s((Bitmap) y.first, new PointF(this.f16345a.h.exactCenterX(), this.f16345a.h.exactCenterY()));
                        acquireNextImage.close();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
