package g;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Looper;
import android.widget.ImageView;
import com.squareup.picasso.PicassoProvider;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class akf {

    /* renamed from: a, reason: collision with root package name */
    public static final dae f10373a = new dae(Looper.getMainLooper(), 0, false);

    /* renamed from: b, reason: collision with root package name */
    public static volatile akf f10374b = null;

    /* renamed from: c, reason: collision with root package name */
    public final ReferenceQueue f10375c;

    /* renamed from: d, reason: collision with root package name */
    public final fnq f10376d;

    /* renamed from: e, reason: collision with root package name */
    public final yk f10377e;

    /* renamed from: f, reason: collision with root package name */
    public final List f10378f;

    /* renamed from: g, reason: collision with root package name */
    public final WeakHashMap f10379g;
    public final Context h;
    public final ctl i;
    public final WeakHashMap j;

    public akf(Context context, ctl ctlVar, fnq fnqVar, yk ykVar) {
        this.h = context;
        this.i = ctlVar;
        this.f10376d = fnqVar;
        ArrayList arrayList = new ArrayList(7);
        arrayList.add(new ckb(context, 1));
        arrayList.add(new bup(context));
        int i = 0;
        arrayList.add(new byu(context, i));
        arrayList.add(new ckb(context, i));
        arrayList.add(new bdh(context));
        arrayList.add(new byu(context, 1));
        arrayList.add(new dam((evf) ctlVar.f13468c, ykVar));
        this.f10378f = Collections.unmodifiableList(arrayList);
        this.f10377e = ykVar;
        this.f10379g = new WeakHashMap();
        this.j = new WeakHashMap();
        ReferenceQueue referenceQueue = new ReferenceQueue();
        this.f10375c = referenceQueue;
        new np(referenceQueue, f10373a).start();
    }

    public static akf k() {
        if (f10374b == null) {
            synchronized (akf.class) {
                try {
                    if (f10374b == null) {
                        Context context = PicassoProvider.f9104a;
                        if (context == null) {
                            throw new IllegalStateException("context == null");
                        }
                        Context applicationContext = context.getApplicationContext();
                        evf evfVar = new evf(applicationContext);
                        fnq fnqVar = new fnq(applicationContext);
                        cp cpVar = new cp(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new dew(2));
                        yk ykVar = new yk(fnqVar);
                        f10374b = new akf(applicationContext, new ctl(applicationContext, cpVar, f10373a, evfVar, fnqVar, ykVar), fnqVar, ykVar);
                    }
                } finally {
                }
            }
        }
        return f10374b;
    }

    public final ekl l(String str) {
        if (str == null) {
            return new ekl(this, null);
        }
        if (str.trim().length() != 0) {
            return new ekl(this, Uri.parse(str));
        }
        throw new IllegalArgumentException("Path must not be empty.");
    }

    public final void m(Object obj) {
        StringBuilder sb = dxc.f14999a;
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
        fgs fgsVar = (fgs) this.f10379g.remove(obj);
        if (fgsVar != null) {
            fgsVar.f16757g = true;
            eqi eqiVar = (eqi) this.i.i;
            eqiVar.sendMessage(eqiVar.obtainMessage(2, fgsVar));
        }
        if (obj instanceof ImageView) {
            awf.e(this.j.remove((ImageView) obj));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void n(Bitmap bitmap, gye gyeVar, fgs fgsVar, Exception exc) {
        boolean z = fgsVar.f16757g;
        bvu bvuVar = fgsVar.f16756f;
        if (z) {
            return;
        }
        if (!fgsVar.f16754d) {
            this.f10379g.remove(fgsVar.h());
        }
        if (bitmap == null) {
            ImageView imageView = (ImageView) bvuVar.get();
            if (imageView == null) {
                return;
            }
            Object drawable = imageView.getDrawable();
            if (drawable instanceof Animatable) {
                ((Animatable) drawable).stop();
                return;
            }
            return;
        }
        if (gyeVar == null) {
            throw new AssertionError("LoadedFrom cannot be null.");
        }
        ImageView imageView2 = (ImageView) bvuVar.get();
        if (imageView2 == null) {
            return;
        }
        Context context = fgsVar.f16753c.h;
        int i = clu.f13092a;
        Drawable drawable2 = imageView2.getDrawable();
        if (drawable2 instanceof Animatable) {
            ((Animatable) drawable2).stop();
        }
        imageView2.setImageDrawable(new clu(context, bitmap, drawable2, gyeVar));
    }

    public final void o(fgs fgsVar) {
        Object h = fgsVar.h();
        if (h != null) {
            WeakHashMap weakHashMap = this.f10379g;
            if (weakHashMap.get(h) != fgsVar) {
                m(h);
                weakHashMap.put(h, fgsVar);
            }
        }
        eqi eqiVar = (eqi) this.i.i;
        eqiVar.sendMessage(eqiVar.obtainMessage(1, fgsVar));
    }
}
