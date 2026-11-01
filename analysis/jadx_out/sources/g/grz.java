package g;

import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class grz implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ eum f18666a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18667b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f18668c;

    public grz(eum eumVar, int i, boolean z) {
        this.f18666a = eumVar;
        this.f18667b = i;
        this.f18668c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        eum eumVar = this.f18666a;
        eumVar.y();
        try {
            eumVar.p = this.f18667b;
            ByteBuffer byteBuffer = (ByteBuffer) eumVar.i.f16548e;
            byteBuffer.position(0);
            cxf cxfVar = new cxf(byteBuffer, 0);
            dbj dbjVar = new dbj(5, false);
            dbjVar.z = cxfVar;
            eumVar.aa(eumVar.ab(dbjVar));
            if (this.f18668c) {
                eumVar.ac();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }
}
