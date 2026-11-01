package com.bytedance.sdk.openadsdk.mediation.bridge;

import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;

/* loaded from: classes3.dex */
public class MediationResultBuilder {
    private boolean dq = false;

    /* renamed from: d, reason: collision with root package name */
    private int f3819d = -1;
    private String ox = null;
    private ValueSet p = null;

    public static final class ResultImpl implements Result {

        /* renamed from: d, reason: collision with root package name */
        private final int f3820d;
        private final boolean dq;
        private final String ox;
        private final ValueSet p;

        private ResultImpl(boolean z, int i, String str, ValueSet valueSet) {
            this.dq = z;
            this.f3820d = i;
            this.ox = str;
            this.p = valueSet;
        }

        @Override // com.bykv.vk.openvk.api.proto.Result
        public int code() {
            return this.f3820d;
        }

        @Override // com.bykv.vk.openvk.api.proto.Result
        public boolean isSuccess() {
            return this.dq;
        }

        @Override // com.bykv.vk.openvk.api.proto.Result
        public String message() {
            return this.ox;
        }

        @Override // com.bykv.vk.openvk.api.proto.Result
        public ValueSet values() {
            return this.p;
        }
    }

    private MediationResultBuilder() {
    }

    public static final MediationResultBuilder create() {
        return new MediationResultBuilder();
    }

    public Result build() {
        boolean z = this.dq;
        int i = this.f3819d;
        String str = this.ox;
        ValueSet valueSet = this.p;
        if (valueSet == null) {
            valueSet = MediationValueSetBuilder.create().build();
        }
        return new ResultImpl(z, i, str, valueSet);
    }

    public MediationResultBuilder setCode(int i) {
        this.f3819d = i;
        return this;
    }

    public MediationResultBuilder setMessage(String str) {
        this.ox = str;
        return this;
    }

    public MediationResultBuilder setSuccess(boolean z) {
        this.dq = z;
        return this;
    }

    public MediationResultBuilder setValues(ValueSet valueSet) {
        this.p = valueSet;
        return this;
    }
}
