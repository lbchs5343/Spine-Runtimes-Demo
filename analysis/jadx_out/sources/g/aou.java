package g;

import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.util.Comparator;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final /* synthetic */ class aou implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10588a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10589b;

    public /* synthetic */ aou(int i, Object obj) {
        this.f10588a = i;
        this.f10589b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f10588a) {
            case 0:
                ve veVar = (ve) obj;
                ve veVar2 = (ve) obj2;
                int compare = ((Comparator) this.f10589b).compare(veVar.f20149d, veVar2.f20149d);
                return compare == -2 ? veVar.compareTo(veVar2) : compare;
            case 1:
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.f10589b;
                MaterialButton materialButton = (MaterialButton) obj;
                MaterialButton materialButton2 = (MaterialButton) obj2;
                int compareTo = Boolean.valueOf(materialButton.j).compareTo(Boolean.valueOf(materialButton2.j));
                if (compareTo != 0) {
                    return compareTo;
                }
                int compareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                return compareTo2 != 0 ? compareTo2 : Integer.compare(materialButtonToggleGroup.indexOfChild(materialButton), materialButtonToggleGroup.indexOfChild(materialButton2));
            default:
                LinkedHashMap linkedHashMap = (LinkedHashMap) this.f10589b;
                fza fzaVar = (fza) obj;
                fza fzaVar2 = (fza) obj2;
                fza fzaVar3 = (fza) linkedHashMap.get(fzaVar);
                if (fzaVar3 != null) {
                    if (fzaVar2.equals(fzaVar3)) {
                        return -1;
                    }
                } else if (fzaVar.equals(linkedHashMap.get(fzaVar2))) {
                    return 1;
                }
                return 0;
        }
    }
}
