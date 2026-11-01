package g;

import android.util.SparseArray;

/* loaded from: classes3.dex */
public enum egd {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4),
    UNRECOGNIZED(-1);

    private final int value;

    static {
        egd egdVar = DEFAULT;
        egd egdVar2 = UNMETERED_ONLY;
        egd egdVar3 = UNMETERED_OR_DAILY;
        egd egdVar4 = FAST_IF_RADIO_AWAKE;
        egd egdVar5 = NEVER;
        egd egdVar6 = UNRECOGNIZED;
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, egdVar);
        sparseArray.put(1, egdVar2);
        sparseArray.put(2, egdVar3);
        sparseArray.put(3, egdVar4);
        sparseArray.put(4, egdVar5);
        sparseArray.put(-1, egdVar6);
    }

    egd(int i) {
        this.value = i;
    }
}
