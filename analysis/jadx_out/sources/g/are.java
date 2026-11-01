package g;

/* loaded from: classes.dex */
public final class are extends axr implements bto {
    final /* synthetic */ ega $this_checkContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public are(ega egaVar) {
        super(2);
        this.$this_checkContext = egaVar;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        int intValue = ((Number) obj).intValue();
        erz erzVar = (erz) obj2;
        efi key = erzVar.getKey();
        erz _x = this.$this_checkContext.collectContext._x(key);
        if (key != dwm.o) {
            return Integer.valueOf(erzVar != _x ? Integer.MIN_VALUE : intValue + 1);
        }
        dta dtaVar = (dta) _x;
        dta dtaVar2 = (dta) erzVar;
        while (true) {
            if (dtaVar2 != null) {
                if (dtaVar2 == dtaVar || !(dtaVar2 instanceof azc)) {
                    break;
                }
                fzw fzwVar = (fzw) fyw.z.get((fyw) dtaVar2);
                dtaVar2 = fzwVar != null ? fzwVar.getParent() : null;
            } else {
                dtaVar2 = null;
                break;
            }
        }
        if (dtaVar2 == dtaVar) {
            if (dtaVar != null) {
                intValue++;
            }
            return Integer.valueOf(intValue);
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + dtaVar2 + ", expected child of " + dtaVar + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
    }
}
