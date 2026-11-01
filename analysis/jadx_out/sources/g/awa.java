package g;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class awa implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    public int f10960e;

    /* renamed from: f, reason: collision with root package name */
    public int f10961f;

    /* renamed from: g, reason: collision with root package name */
    public final fpu f10962g;
    public Exception h;
    public fgs i;
    public final ctl j;
    public Bitmap k;
    public ArrayList l;
    public final fnq m;
    public final yk n;
    public je o;
    public final int p = f10958c.incrementAndGet();
    public final gsp q;
    public final akf r;
    public gye s;
    public int t;
    public Future u;
    public final String v;

    /* renamed from: d, reason: collision with root package name */
    public static final Object f10959d = new Object();

    /* renamed from: a, reason: collision with root package name */
    public static final cqw f10956a = new cqw(0);

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicInteger f10958c = new AtomicInteger();

    /* renamed from: b, reason: collision with root package name */
    public static final boc f10957b = new boc();

    public awa(akf akfVar, ctl ctlVar, fnq fnqVar, yk ykVar, fgs fgsVar, gsp gspVar) {
        this.r = akfVar;
        this.j = ctlVar;
        this.m = fnqVar;
        this.n = ykVar;
        this.i = fgsVar;
        this.v = fgsVar.f16751a;
        fpu fpuVar = fgsVar.f16755e;
        this.f10962g = fpuVar;
        this.o = fpuVar.f17214c;
        this.f10960e = 0;
        this.q = gspVar;
        this.t = gspVar.f();
    }

    public static void w(fpu fpuVar) {
        Uri uri = fpuVar.f17212a;
        String valueOf = uri != null ? String.valueOf(uri.getPath()) : Integer.toHexString(0);
        StringBuilder sb = (StringBuilder) f10956a.get();
        sb.ensureCapacity(valueOf.length() + 8);
        sb.replace(8, sb.length(), valueOf);
        Thread.currentThread().setName(sb.toString());
    }

    public static Bitmap x(cpv cpvVar, fpu fpuVar) {
        deb ai = baf.ai(cpvVar);
        boolean z = ai.f(0L, dxc.f15000b) && ai.f(8L, dxc.f15001c);
        fpuVar.getClass();
        if (z) {
            clq clqVar = ai.f14037d;
            clqVar.ae(ai.f14036b);
            byte[] z2 = clqVar.z(clqVar.f13080b);
            return BitmapFactory.decodeByteArray(z2, 0, z2.length, null);
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(new wd(ai, 1), null, null);
        if (decodeStream != null) {
            return decodeStream;
        }
        throw new IOException("Failed to decode stream.");
    }

    public final void aa(fgs fgsVar) {
        boolean remove;
        if (this.i == fgsVar) {
            this.i = null;
            remove = true;
        } else {
            ArrayList arrayList = this.l;
            remove = arrayList != null ? arrayList.remove(fgsVar) : false;
        }
        if (remove && fgsVar.f16755e.f17214c == this.o) {
            je jeVar = je.LOW;
            ArrayList arrayList2 = this.l;
            boolean z = (arrayList2 == null || arrayList2.isEmpty()) ? false : true;
            fgs fgsVar2 = this.i;
            if (fgsVar2 != null || z) {
                if (fgsVar2 != null) {
                    jeVar = fgsVar2.f16755e.f17214c;
                }
                if (z) {
                    int size = this.l.size();
                    for (int i = 0; i < size; i++) {
                        je jeVar2 = ((fgs) this.l.get(i)).f16755e.f17214c;
                        if (jeVar2.ordinal() > jeVar.ordinal()) {
                            jeVar = jeVar2;
                        }
                    }
                }
            }
            this.o = jeVar;
        }
        this.r.getClass();
    }

    @Override // java.lang.Runnable
    public final void run() {
        ctl ctlVar = this.j;
        try {
            try {
                try {
                    try {
                        w(this.f10962g);
                        this.r.getClass();
                        Bitmap y = y();
                        this.k = y;
                        if (y == null) {
                            eqi eqiVar = (eqi) ctlVar.i;
                            eqiVar.sendMessage(eqiVar.obtainMessage(6, this));
                        } else {
                            ctlVar.t(this);
                        }
                    } catch (OutOfMemoryError e2) {
                        StringWriter stringWriter = new StringWriter();
                        this.n.n().o(new PrintWriter(stringWriter));
                        this.h = new RuntimeException(stringWriter.toString(), e2);
                        eqi eqiVar2 = (eqi) ctlVar.i;
                        eqiVar2.sendMessage(eqiVar2.obtainMessage(6, this));
                    }
                } catch (Exception e3) {
                    this.h = e3;
                    eqi eqiVar3 = (eqi) ctlVar.i;
                    eqiVar3.sendMessage(eqiVar3.obtainMessage(6, this));
                }
            } catch (atg e4) {
                if (!((e4.networkPolicy & sy.OFFLINE.index) != 0) || e4.code != 504) {
                    this.h = e4;
                }
                eqi eqiVar4 = (eqi) ctlVar.i;
                eqiVar4.sendMessage(eqiVar4.obtainMessage(6, this));
            } catch (IOException e5) {
                this.h = e5;
                eqi eqiVar5 = (eqi) ctlVar.i;
                eqiVar5.sendMessageDelayed(eqiVar5.obtainMessage(5, this), 500L);
            }
        } finally {
            Thread.currentThread().setName("Picasso-Idle");
        }
    }

    public final Bitmap y() {
        int i;
        int i2 = alz.NO_CACHE.index;
        fta ftaVar = (fta) ((cjm) this.m.f17099f).get(this.v);
        Bitmap bitmap = null;
        Bitmap bitmap2 = ftaVar != null ? ftaVar.f17363a : null;
        if (bitmap2 != null) {
            this.n.j.sendEmptyMessage(0);
            this.s = gye.MEMORY;
            this.r.getClass();
            return bitmap2;
        }
        int i3 = this.t == 0 ? sy.OFFLINE.index : this.f10960e;
        this.f10960e = i3;
        fkn e2 = this.q.e(this.f10962g, i3);
        if (e2 != null) {
            this.s = (gye) e2.f16939c;
            this.f10961f = e2.f16938b;
            bitmap2 = (Bitmap) e2.f16940d;
            if (bitmap2 == null) {
                cpv cpvVar = (cpv) e2.f16937a;
                try {
                    bitmap2 = x(cpvVar, this.f10962g);
                } finally {
                    try {
                        cpvVar.close();
                    } catch (IOException unused) {
                    }
                }
            }
        }
        Bitmap bitmap3 = bitmap2;
        if (bitmap3 != null) {
            this.r.getClass();
            yk ykVar = this.n;
            ykVar.getClass();
            StringBuilder sb = dxc.f14999a;
            int allocationByteCount = bitmap3.getAllocationByteCount();
            if (allocationByteCount < 0) {
                throw new IllegalStateException("Negative size: " + bitmap3);
            }
            eqi eqiVar = ykVar.j;
            eqiVar.sendMessage(eqiVar.obtainMessage(2, allocationByteCount, 0));
            fpu fpuVar = this.f10962g;
            fpuVar.getClass();
            if (fpuVar.f17213b != null || this.f10961f != 0) {
                synchronized (f10959d) {
                    try {
                        this.f10962g.getClass();
                        int i4 = this.f10961f;
                        boolean z = true;
                        if (i4 != 0) {
                            fpu fpuVar2 = this.f10962g;
                            int width = bitmap3.getWidth();
                            int height = bitmap3.getHeight();
                            fpuVar2.getClass();
                            Matrix matrix = new Matrix();
                            if (i4 != 0 && i4 != 0) {
                                switch (i4) {
                                    case 3:
                                    case 4:
                                        i = 180;
                                        break;
                                    case 5:
                                    case 6:
                                        i = 90;
                                        break;
                                    case 7:
                                    case 8:
                                        i = MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME;
                                        break;
                                    default:
                                        i = 0;
                                        break;
                                }
                                int i5 = (i4 == 2 || i4 == 7 || i4 == 4 || i4 == 5) ? -1 : 1;
                                if (i != 0) {
                                    matrix.preRotate(i);
                                }
                                if (i5 != 1) {
                                    matrix.postScale(i5, 1.0f);
                                }
                            }
                            Bitmap createBitmap = Bitmap.createBitmap(bitmap3, 0, 0, width, height, matrix, true);
                            if (createBitmap != bitmap3) {
                                bitmap3.recycle();
                                bitmap3 = createBitmap;
                            }
                            this.r.getClass();
                        }
                        List list = this.f10962g.f17213b;
                        if (list == null) {
                            z = false;
                        }
                        if (z) {
                            if (list.size() <= 0) {
                                bitmap = bitmap3;
                            } else {
                                if (list.get(0) != null) {
                                    throw new ClassCastException();
                                }
                                try {
                                    throw null;
                                } catch (RuntimeException unused2) {
                                    akf.f10373a.post(new foq(2));
                                }
                            }
                            this.r.getClass();
                            bitmap3 = bitmap;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (bitmap3 != null) {
                    yk ykVar2 = this.n;
                    ykVar2.getClass();
                    int allocationByteCount2 = bitmap3.getAllocationByteCount();
                    if (allocationByteCount2 < 0) {
                        throw new IllegalStateException("Negative size: " + bitmap3);
                    }
                    eqi eqiVar2 = ykVar2.j;
                    eqiVar2.sendMessage(eqiVar2.obtainMessage(3, allocationByteCount2, 0));
                }
            }
        }
        return bitmap3;
    }

    public final boolean z() {
        ArrayList arrayList;
        Future future;
        return this.i == null && ((arrayList = this.l) == null || arrayList.isEmpty()) && (future = this.u) != null && future.cancel(false);
    }
}
