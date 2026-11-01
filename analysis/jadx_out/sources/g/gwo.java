package g;

/* loaded from: classes3.dex */
public enum gwo {
    REASON_UNKNOWN(0),
    MESSAGE_TOO_OLD(1),
    CACHE_FULL(2),
    PAYLOAD_TOO_BIG(3),
    MAX_RETRIES_REACHED(4),
    INVALID_PAYLOD(5),
    SERVER_ERROR(6);

    private final int number_;

    gwo(int i) {
        this.number_ = i;
    }

    public final int b() {
        return this.number_;
    }
}
