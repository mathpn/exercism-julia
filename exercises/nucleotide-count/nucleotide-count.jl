"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""

function count_nucleotides(strand)
    count = Dict((n, 0) for n in "ACGT")
    for char in strand
        if haskey(count, char)
            count[char] += 1
        else
            throw(DomainError("Nucleotides must be A, C, T or G"))
        end
    end
    return count
end
