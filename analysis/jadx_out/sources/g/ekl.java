package g;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Looper;
import android.widget.ImageView;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class ekl {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f15703a = new AtomicInteger();

    /* renamed from: b, reason: collision with root package name */
    public final akf f15704b;

    /* renamed from: c, reason: collision with root package name */
    public final fdy f15705c;

    public ekl(akf akfVar, Uri uri) {
        this.f15704b = akfVar;
        fdy fdyVar = new fdy(14, false);
        fdyVar.f16634c = uri;
        this.f15705c = fdyVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void d(ImageView imageView) {
        System.nanoTime();
        StringBuilder sb = dxc.f14999a;
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
        if (imageView == null) {
            throw new IllegalArgumentException("Target must not be null.");
        }
        fdy fdyVar = this.f15705c;
        Uri uri = (Uri) fdyVar.f16634c;
        akf akfVar = this.f15704b;
        if (uri == null) {
            akfVar.m(imageView);
            int i = clu.f13092a;
            imageView.setImageDrawable(null);
            if (imageView.getDrawable() instanceof Animatable) {
                ((Animatable) imageView.getDrawable()).start();
                return;
            }
            return;
        }
        f15703a.getAndIncrement();
        if (((je) fdyVar.f16632a) == null) {
            fdyVar.f16632a = je.NORMAL;
        }
        Uri uri2 = (Uri) fdyVar.f16634c;
        fpu fpuVar = new fpu(uri2, (je) fdyVar.f16632a);
        StringBuilder sb2 = dxc.f14999a;
        if (uri2 != null) {
            String uri3 = uri2.toString();
            sb2.ensureCapacity(uri3.length() + 50);
            sb2.append(uri3);
        } else {
            sb2.ensureCapacity(50);
            sb2.append(0);
        }
        sb2.append('\n');
        String sb3 = sb2.toString();
        sb2.setLength(0);
        int i2 = alz.NO_CACHE.index;
        yk ykVar = akfVar.f10377e;
        fta ftaVar = (fta) ((cjm) akfVar.f10376d.f17099f).get(sb3);
        Bitmap bitmap = ftaVar != null ? ftaVar.f17363a : null;
        if (bitmap != null) {
            ykVar.j.sendEmptyMessage(0);
        } else {
            ykVar.j.sendEmptyMessage(1);
        }
        if (bitmap == null) {
            int i3 = clu.f13092a;
            imageView.setImageDrawable(null);
            if (imageView.getDrawable() instanceof Animatable) {
                ((Animatable) imageView.getDrawable()).start();
            }
            akfVar.o(new fgs(akfVar, imageView, fpuVar, sb3));
            return;
        }
        akfVar.m(imageView);
        Context context = akfVar.h;
        gye gyeVar = gye.MEMORY;
        int i4 = clu.f13092a;
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        imageView.setImageDrawable(new clu(context, bitmap, drawable, gyeVar));
    }
}
