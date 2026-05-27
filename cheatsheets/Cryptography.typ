#set page(flipped: true, columns: 2, margin: 1cm)
#set text(11pt)

#set table(stroke: none)

#set enum(tight: true, spacing: 4pt, numbering: n => box(height: 1em, circle(radius: 0.4em, align(center + horizon, text(8pt)[#n]))))

== Hash Functions

#table(
    columns: (20%, auto),
    [Properties],
    [
        / pre-image resistance: Given the output of a function, it is difficult to determine a possible input that results in that output.
        / second pre-image resistance: Given the input and output of a function, it is difficult to determine a possible second input that results in the same output.
        / collision resistance: It is hard to find two inputs of a function that result in the same output.
    ],
    [Collision probability], $ frac(N!, (N-n)!) $
)

== Groups

$plus.circle$ associative, $e$ identity element, $a^(-1)$ inverse elements \
Abelian/commutative group: $plus.circle$ commutative

$ZZ_m = {0,1,...,m}$ (group under $+$) \
$ZZ_m^* = { x in ZZ_m | x "co-prime" m }$ (group under $dot$)

$"ord"(G) = |G| $ \
$"ord"(a in G) = k quad "s.t." a^k = e $

$g in G$ is a generator iff $"ord"(g) = "ord"(G)$
