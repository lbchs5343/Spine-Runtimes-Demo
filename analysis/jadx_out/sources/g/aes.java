package g;

import java.util.BitSet;

/* loaded from: classes.dex */
public final class aes {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f10116a = dsr.k(aes.class);

    /* renamed from: b, reason: collision with root package name */
    public BitSet[] f10117b;

    /* renamed from: c, reason: collision with root package name */
    public BitSet[] f10118c;

    /* renamed from: d, reason: collision with root package name */
    public BitSet[] f10119d;

    /* renamed from: e, reason: collision with root package name */
    public BitSet[] f10120e;

    public static BitSet[] f(int i, int i2) {
        BitSet[] bitSetArr = new BitSet[i];
        for (int i3 = 0; i3 < i; i3++) {
            bitSetArr[i3] = new BitSet(i2);
        }
        return bitSetArr;
    }
}
