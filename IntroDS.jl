#Intro to DS
#https://github.com/azev77/InvitationToDynamicalSystems/blob/master/inv-dyn-sys-book.pdf

#Chapter 2
#page 43
a=[2 0; 0 -3]
exp(a)

#p45
a=[2 1; 1 2]
exp(2*a) * [1;0]

#p48
a=[2 3; 6 -8]
using LinearAlgebra
a_eigval, a_eigvec = eigen(a)
#LinearAlgebra.eigen(a)
