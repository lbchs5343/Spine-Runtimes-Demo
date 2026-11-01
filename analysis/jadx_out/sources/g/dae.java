package g;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes3.dex */
public class dae extends Handler {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13846b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dae(Looper looper, int i) {
        super(looper);
        this.f13846b = i;
        switch (i) {
            case 6:
                super(looper);
                Looper.getMainLooper();
                break;
            default:
                Looper.getMainLooper();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ dae(Looper looper, int i, boolean z) {
        super(looper);
        this.f13846b = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ dae(Looper looper, Handler.Callback callback, int i) {
        super(looper, callback);
        this.f13846b = i;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        CountDownLatch countDownLatch;
        switch (this.f13846b) {
            case 0:
                int i = message.what;
                if (i == 3) {
                    fgs fgsVar = (fgs) message.obj;
                    fgsVar.f16753c.m(fgsVar.h());
                    return;
                }
                if (i != 8) {
                    if (i != 13) {
                        throw new AssertionError("Unknown handler message received: " + message.what);
                    }
                    List list = (List) message.obj;
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        fgs fgsVar2 = (fgs) list.get(i2);
                        akf akfVar = fgsVar2.f16753c;
                        int i3 = alz.NO_CACHE.index;
                        String str = fgsVar2.f16751a;
                        yk ykVar = akfVar.f10377e;
                        fta ftaVar = (fta) ((cjm) akfVar.f10376d.f17099f).get(str);
                        Bitmap bitmap = ftaVar != null ? ftaVar.f17363a : null;
                        if (bitmap != null) {
                            ykVar.j.sendEmptyMessage(0);
                        } else {
                            ykVar.j.sendEmptyMessage(1);
                        }
                        if (bitmap != null) {
                            akfVar.n(bitmap, gye.MEMORY, fgsVar2, null);
                        } else {
                            akfVar.o(fgsVar2);
                        }
                    }
                    return;
                }
                List list2 = (List) message.obj;
                int size2 = list2.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    awa awaVar = (awa) list2.get(i4);
                    akf akfVar2 = awaVar.r;
                    akfVar2.getClass();
                    fgs fgsVar3 = awaVar.i;
                    ArrayList arrayList = awaVar.l;
                    boolean z = (arrayList == null || arrayList.isEmpty()) ? false : true;
                    if (fgsVar3 != null || z) {
                        Uri uri = awaVar.f10962g.f17212a;
                        Exception exc = awaVar.h;
                        Bitmap bitmap2 = awaVar.k;
                        gye gyeVar = awaVar.s;
                        if (fgsVar3 != null) {
                            akfVar2.n(bitmap2, gyeVar, fgsVar3, exc);
                        }
                        if (z) {
                            int size3 = arrayList.size();
                            for (int i5 = 0; i5 < size3; i5++) {
                                akfVar2.n(bitmap2, gyeVar, (fgs) arrayList.get(i5), exc);
                            }
                        }
                    }
                }
                return;
            case 1:
                dzr dzrVar = (dzr) message.obj;
                int i6 = message.what;
                if (i6 != 1) {
                    if (i6 != 2) {
                        return;
                    }
                    ezv ezvVar = dzrVar.f15148a;
                    return;
                }
                ezv ezvVar2 = dzrVar.f15148a;
                Object obj = dzrVar.f15149b[0];
                if (ezvVar2.f16430f.get()) {
                    countDownLatch = ezvVar2.j;
                    try {
                        adh adhVar = ezvVar2.f16428d;
                        if (adhVar.f10036a == ezvVar2) {
                            SystemClock.uptimeMillis();
                            adhVar.f10036a = null;
                            adhVar.o();
                        }
                        countDownLatch.countDown();
                    } finally {
                        countDownLatch.countDown();
                    }
                } else {
                    try {
                        adh adhVar2 = ezvVar2.f16428d;
                        if (adhVar2.m != ezvVar2) {
                            if (adhVar2.f10036a == ezvVar2) {
                                SystemClock.uptimeMillis();
                                adhVar2.f10036a = null;
                                adhVar2.o();
                            }
                        } else if (!adhVar2.l) {
                            SystemClock.uptimeMillis();
                            adhVar2.m = null;
                            fm fmVar = adhVar2.f10041f;
                            if (fmVar != null) {
                                if (Looper.myLooper() == Looper.getMainLooper()) {
                                    fmVar.q(obj);
                                } else {
                                    fmVar.aa(obj);
                                }
                            }
                        }
                    } finally {
                        countDownLatch = ezvVar2.j;
                    }
                }
                ezvVar2.f16429e = egx.FINISHED;
                return;
            case 2:
                sendMessageDelayed(obtainMessage(), 1000L);
                return;
            default:
                super.handleMessage(message);
                return;
        }
    }
}
