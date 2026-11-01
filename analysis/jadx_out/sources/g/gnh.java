package g;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class gnh extends cwx {

    /* renamed from: a, reason: collision with root package name */
    public final bjt[] f18449a;

    public gnh(bjt[] bjtVarArr) {
        this.f18449a = bjtVarArr;
        this.az = Arrays.hashCode(bjtVarArr);
    }

    @Override // g.cwx
    public final boolean b(Object obj) {
        return Arrays.equals(this.f18449a, ((gnh) obj).f18449a);
    }

    @Override // g.cwx
    public final bjt[] g() {
        return this.f18449a;
    }

    @Override // g.cwx
    public final boolean h() {
        return false;
    }

    @Override // g.cwx
    public final cwx j() {
        boolean o = o(bjt.OBJECT);
        aog aogVar = cwx.t;
        return o ? aogVar : o(bjt.ARRAY) ? new aoe(aogVar) : new cff(this.f18449a[0]);
    }

    @Override // g.cwx
    public final boolean o(bjt bjtVar) {
        for (bjt bjtVar2 : this.f18449a) {
            if (bjtVar2 == bjtVar) {
                return true;
            }
        }
        return false;
    }

    @Override // g.cwx
    public final String toString() {
        String sb;
        bjt[] bjtVarArr = this.f18449a;
        if (bjtVarArr.length == bjt.values().length) {
            return "??";
        }
        StringBuilder sb2 = new StringBuilder("??[");
        int length = bjtVarArr == null ? 0 : bjtVarArr.length;
        if (length == 0) {
            sb = "";
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(bjtVarArr[0]);
            for (int i = 1; i < length; i++) {
                sb3.append(", ");
                sb3.append(bjtVarArr[i]);
            }
            sb = sb3.toString();
        }
        sb2.append(sb);
        sb2.append(']');
        return sb2.toString();
    }
}
