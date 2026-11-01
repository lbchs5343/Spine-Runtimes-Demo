package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.UUID;

/* loaded from: classes.dex */
public abstract class dze {

    /* renamed from: a, reason: collision with root package name */
    public final UUID f15117a;

    /* renamed from: b, reason: collision with root package name */
    public final fkj f15118b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f15119c;

    public dze(UUID uuid, fkj fkjVar, LinkedHashSet linkedHashSet) {
        bff.p(uuid, TTDownloadField.TT_ID);
        bff.p(fkjVar, "workSpec");
        bff.p(linkedHashSet, "tags");
        this.f15117a = uuid;
        this.f15118b = fkjVar;
        this.f15119c = linkedHashSet;
    }
}
