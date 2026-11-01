package g;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.util.Log;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class bbf implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11217a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ eum f11218b;

    public /* synthetic */ bbf(eum eumVar, int i) {
        this.f11217a = i;
        this.f11218b = eumVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j;
        int i;
        int i2;
        switch (this.f11217a) {
            case 0:
                if (!this.f11218b.v.get()) {
                    eum eumVar = this.f11218b;
                    if (eumVar.af() && eumVar.u.size() != 0) {
                        int i3 = eumVar.t;
                        if (i3 <= 0 || (i = eumVar.h) < (i2 = i3 - 1) || (i == i2 && eumVar.f16186f < eumVar.u.size() - 1)) {
                            long currentTimeMillis = System.currentTimeMillis();
                            eum eumVar2 = this.f11218b;
                            int i4 = eumVar2.f16186f + 1;
                            eumVar2.f16186f = i4;
                            if (i4 >= eumVar2.u.size()) {
                                eumVar2.f16186f = 0;
                                eumVar2.h++;
                            }
                            int i5 = eumVar2.f16186f;
                            ArrayList arrayList = eumVar2.u;
                            biz bizVar = (i5 < 0 || i5 >= arrayList.size()) ? null : (biz) arrayList.get(i5);
                            if (bizVar == null) {
                                j = 0;
                            } else {
                                if (eumVar2.f16185e != null) {
                                    try {
                                        Bitmap ae = eumVar2.ae(eumVar2.f16185e.width() / eumVar2.p, eumVar2.f16185e.height() / eumVar2.p);
                                        Canvas canvas = (Canvas) eumVar2.f16187g.get(ae);
                                        if (canvas == null) {
                                            canvas = new Canvas(ae);
                                            eumVar2.f16187g.put(ae, canvas);
                                        }
                                        if (bizVar instanceof gyn) {
                                            eumVar2.o.rewind();
                                            ae.copyPixelsFromBuffer(eumVar2.o);
                                            if (eumVar2.f16186f == 0) {
                                                canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                                            } else {
                                                canvas.save();
                                                canvas.clipRect(eumVar2.k.f16014b);
                                                eqt eqtVar = eumVar2.k;
                                                byte b2 = eqtVar.f16013a;
                                                if (b2 == 1) {
                                                    canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                                                } else if (b2 == 2) {
                                                    eqtVar.f16015c.rewind();
                                                    ae.copyPixelsFromBuffer(eumVar2.k.f16015c);
                                                }
                                                canvas.restore();
                                            }
                                            if (((gyn) bizVar).q == 2) {
                                                eqt eqtVar2 = eumVar2.k;
                                                if (eqtVar2.f16013a != 2) {
                                                    eqtVar2.f16015c.rewind();
                                                    ae.copyPixelsToBuffer(eumVar2.k.f16015c);
                                                }
                                            }
                                            eumVar2.k.f16013a = ((gyn) bizVar).q;
                                            canvas.save();
                                            if (((gyn) bizVar).p == 0) {
                                                int i6 = bizVar.f11680c;
                                                int i7 = eumVar2.p;
                                                int i8 = bizVar.f11681d;
                                                canvas.clipRect(i6 / i7, i8 / i7, (i6 + bizVar.f11684g) / i7, (i8 + bizVar.h) / i7);
                                                canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                                            }
                                            Rect rect = eumVar2.k.f16014b;
                                            int i9 = bizVar.f11680c;
                                            int i10 = eumVar2.p;
                                            int i11 = bizVar.f11681d;
                                            rect.set(i9 / i10, i11 / i10, (i9 + bizVar.f11684g) / i10, (i11 + bizVar.h) / i10);
                                            canvas.restore();
                                        }
                                        Bitmap ae2 = eumVar2.ae(bizVar.f11684g, bizVar.h);
                                        eumVar2.z(bizVar.a(canvas, eumVar2.j, eumVar2.p, ae2, eumVar2.ag()));
                                        eumVar2.z(ae2);
                                        eumVar2.o.rewind();
                                        ae.copyPixelsToBuffer(eumVar2.o);
                                        eumVar2.z(ae);
                                    } catch (Exception e2) {
                                        e2.printStackTrace();
                                    }
                                }
                                j = bizVar.f11683f;
                            }
                            this.f11218b.q.postDelayed(this, Math.max(0L, j - (System.currentTimeMillis() - currentTimeMillis)));
                            Iterator it = this.f11218b.l.iterator();
                            while (it.hasNext()) {
                                aex aexVar = (aex) it.next();
                                ByteBuffer byteBuffer = this.f11218b.o;
                                cpx cpxVar = (cpx) aexVar;
                                eum eumVar3 = cpxVar.i;
                                if (eumVar3.af()) {
                                    Bitmap bitmap = cpxVar.j;
                                    if (bitmap == null || bitmap.isRecycled()) {
                                        cpxVar.j = Bitmap.createBitmap(eumVar3.x().width() / eumVar3.p, eumVar3.x().height() / eumVar3.p, Bitmap.Config.ARGB_4444);
                                    }
                                    byteBuffer.rewind();
                                    if (byteBuffer.remaining() < cpxVar.j.getByteCount()) {
                                        Log.e("o00OOOoO0O", "onRender:Buffer not large enough for pixels");
                                    } else {
                                        cpxVar.j.copyPixelsFromBuffer(byteBuffer);
                                        cpxVar.f13299b.post(cpxVar.f13298a);
                                    }
                                }
                            }
                            break;
                        } else {
                            eumVar.s = true;
                        }
                    }
                    this.f11218b.ad();
                    break;
                }
                break;
            case 1:
                eum eumVar4 = this.f11218b;
                if (eumVar4.l.size() == 0) {
                    eumVar4.ad();
                    break;
                }
                break;
            case 2:
                this.f11218b.ac();
                break;
            case 3:
                this.f11218b.y();
                break;
            default:
                eum eumVar5 = this.f11218b;
                eumVar5.h = 0;
                eumVar5.f16186f = -1;
                eumVar5.s = false;
                break;
        }
    }
}
