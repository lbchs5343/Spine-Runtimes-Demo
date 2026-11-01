package g;

import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;

/* loaded from: classes.dex */
public final class gok implements Result {

    /* renamed from: a, reason: collision with root package name */
    public final ValueSet f18496a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f18497b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18498c;

    /* renamed from: d, reason: collision with root package name */
    public final String f18499d;

    public gok(boolean z, int i, String str, ValueSet valueSet) {
        this.f18497b = z;
        this.f18498c = i;
        this.f18499d = str;
        this.f18496a = valueSet;
    }

    @Override // com.bykv.vk.openvk.api.proto.Result
    public final int code() {
        return this.f18498c;
    }

    @Override // com.bykv.vk.openvk.api.proto.Result
    public final boolean isSuccess() {
        return this.f18497b;
    }

    @Override // com.bykv.vk.openvk.api.proto.Result
    public final String message() {
        return this.f18499d;
    }

    @Override // com.bykv.vk.openvk.api.proto.Result
    public final ValueSet values() {
        return this.f18496a;
    }
}
