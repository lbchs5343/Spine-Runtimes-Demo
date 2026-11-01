package g;

import android.content.Context;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class emk {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f15801a;

    public static emk b(Handler handler) {
        emk emkVar = new emk();
        ArrayList arrayList = new ArrayList(3);
        emkVar.f15801a = arrayList;
        fix fixVar = new fix();
        fixVar.f16868a = handler;
        arrayList.add(fixVar);
        return emkVar;
    }

    public void c() {
        ArrayList arrayList = this.f15801a;
        arrayList.size();
        Context context = eca.f15278c;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            fix fixVar = (fix) it.next();
            try {
                fixVar.f16868a.post(fixVar);
            } catch (Throwable unused) {
            }
        }
    }
}
