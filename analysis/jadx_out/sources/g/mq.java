package g;

import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes3.dex */
public final class mq extends ewq {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19662a;

    /* renamed from: b, reason: collision with root package name */
    public long f19663b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19664c;

    /* renamed from: d, reason: collision with root package name */
    public final long f19665d;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ aju f19666g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mq(aju ajuVar, evq evqVar, long j) {
        super(evqVar);
        bff.p(evqVar, "delegate");
        this.f19666g = ajuVar;
        this.f19665d = j;
    }

    @Override // g.ewq, g.evq, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (this.f19664c) {
            return;
        }
        this.f19664c = true;
        long j = this.f19665d;
        if (j != -1 && this.f19663b != j) {
            throw new ProtocolException("unexpected end of stream");
        }
        try {
            super.close();
            h(null);
        } catch (IOException e2) {
            throw h(e2);
        }
    }

    @Override // g.ewq, g.evq
    public final void f(clq clqVar, long j) {
        if (this.f19664c) {
            throw new IllegalStateException("closed");
        }
        long j2 = this.f19665d;
        if (j2 != -1 && this.f19663b + j > j2) {
            StringBuilder l = awf.l(j2, "expected ", " bytes but received ");
            l.append(this.f19663b + j);
            throw new ProtocolException(l.toString());
        }
        try {
            super.f(clqVar, j);
            this.f19663b += j;
        } catch (IOException e2) {
            throw h(e2);
        }
    }

    @Override // g.ewq, g.evq, java.io.Flushable
    public final void flush() {
        try {
            super.flush();
        } catch (IOException e2) {
            throw h(e2);
        }
    }

    public final IOException h(IOException iOException) {
        if (this.f19662a) {
            return iOException;
        }
        this.f19662a = true;
        return this.f19666g.h(false, true, iOException);
    }
}
