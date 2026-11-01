package g;

import j$.util.Objects;
import java.util.List;

/* loaded from: classes.dex */
public final class gvo extends aog {

    /* renamed from: a, reason: collision with root package name */
    public final aog f18819a;
    public final aog bp;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public gvo(aog aogVar, aog aogVar2) {
        super(r0);
        String str = aogVar.f10565d + '$' + aogVar2.f10565d;
        this.f18819a = aogVar;
        this.bp = aogVar2;
        this.az = (((aogVar2.az * 31) + aogVar.az) * 31) + str.hashCode();
    }

    @Override // g.aog, g.cwx
    public final boolean b(Object obj) {
        if (!super.b(obj)) {
            return false;
        }
        gvo gvoVar = (gvo) obj;
        return Objects.equals(this.f18819a, gvoVar.f18819a) && Objects.equals(this.bp, gvoVar.bp);
    }

    @Override // g.cwx
    public final cwx bg() {
        return this.bp;
    }

    @Override // g.cwx
    public final cwx bj() {
        return this.f18819a;
    }

    @Override // g.cwx
    public final boolean bm() {
        return true;
    }

    @Override // g.cwx
    public final List c() {
        return this.bp.c();
    }

    @Override // g.aog, g.cwx
    public final String toString() {
        return this.f18819a.toString() + '$' + this.bp.toString();
    }
}
