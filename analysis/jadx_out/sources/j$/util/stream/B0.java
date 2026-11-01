package j$.util.stream;

import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class B0 implements DoubleConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20830a;

    public /* synthetic */ B0(int i) {
        this.f20830a = i;
    }

    private final void accept$j$$util$stream$Node$OfDouble$$ExternalSyntheticLambda0(double d2) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfDouble$$ExternalSyntheticLambda0(double d2) {
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d2) {
        int i = this.f20830a;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f20830a) {
        }
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }
}
