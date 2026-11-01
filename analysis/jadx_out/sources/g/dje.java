package g;

import androidx.work.Worker;

/* loaded from: classes.dex */
public final class dje extends axr implements cvw {
    final /* synthetic */ Worker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dje(Worker worker) {
        super(0);
        this.this$0 = worker;
    }

    @Override // g.cvw
    public final Object invoke() {
        return this.this$0.doWork();
    }
}
